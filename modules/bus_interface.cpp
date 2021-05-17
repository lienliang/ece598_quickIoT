//
// Created by eli9 on 5/13/21.
//


#include "bus_interface.h"


bus_interface::bus_interface() {

    current_count = std::vector<int> (3, 0);
    bandwidth_limit = 100;

    ptid = 0;
    flag = 0;
    pthread_mutex_init(&sen_to_cpu_lock, nullptr);
    pthread_mutex_init(&memory_to_cpu_lock, nullptr);
    pthread_mutex_init(&cpu_to_memory_lock, nullptr);

}

bus_interface::bus_interface(sensors& _sensor, PIM& _pim) {

    sensor0 = _sensor;

    pim0 = _pim;

    current_count = std::vector<int> (3, 0);
    bandwidth_limit = 100;

    ptid = 0;
    flag = 0;
    pthread_mutex_init(&sen_to_cpu_lock, nullptr);
    pthread_mutex_init(&memory_to_cpu_lock, nullptr);
    pthread_mutex_init(&cpu_to_memory_lock, nullptr);

}


bus_interface::~bus_interface() {

    pthread_mutex_destroy(&sen_to_cpu_lock);
    pthread_mutex_destroy(&memory_to_cpu_lock);
    pthread_mutex_destroy(&cpu_to_memory_lock);

}


std::pair<std::time_t, int> bus_interface::fetch_from_sensors() {

    if (sensors_to_cpu.empty()) {
        return sensor0.get();
    }

    std::pair<std::time_t, int> current = sensors_to_cpu.front();

    sensors_to_cpu_pop();

    return current;
}


int bus_interface::push_to_memory(std::pair<std::time_t, int> input) {

    cpu_to_memory_push(input);

    return CPU_TO_MEMORY_CYCLES;
}

std::pair<std::time_t, int> bus_interface::fetch_from_memory() {

    if (memory_to_cpu.empty()) {
        return pim0.signal_host();
    }

    std::pair<std::time_t, int> current = memory_to_cpu.front();

    memory_to_cpu_pop();

    return current;
}

void bus_interface::sensors_to_cpu_push(std::pair<std::time_t, int> current) {

    pthread_mutex_lock(&sen_to_cpu_lock);

    if (current_count[0] < bandwidth_limit) {
        sensors_to_cpu.push_back(current);
        current_count[0]++;
    }

    pthread_mutex_unlock(&sen_to_cpu_lock);

}

void bus_interface::sensors_to_cpu_pop() {

    pthread_mutex_lock(&sen_to_cpu_lock);

    if (!sensors_to_cpu.empty()) {
        sensors_to_cpu.pop_front();
        current_count[0]--;
    }

    pthread_mutex_unlock(&sen_to_cpu_lock);
}


void bus_interface::memory_to_cpu_push(std::pair<std::time_t, int> current) {

    pthread_mutex_lock(&memory_to_cpu_lock);

    if (current_count[1] < bandwidth_limit) {
        memory_to_cpu.push_back(current);
        current_count[1]++;
    }

    pthread_mutex_unlock(&memory_to_cpu_lock);
}


void bus_interface::memory_to_cpu_pop() {

    pthread_mutex_lock(&memory_to_cpu_lock);

    if (!memory_to_cpu.empty()) {
        memory_to_cpu.pop_front();
        current_count[1]--;
    }

    pthread_mutex_unlock(&memory_to_cpu_lock);

}


void bus_interface::cpu_to_memory_push(std::pair<std::time_t, int> current) {

    pthread_mutex_lock(&cpu_to_memory_lock);

    if (current_count[2] < bandwidth_limit) {
        cpu_to_memory.push_back(current);
        current_count[2]++;
    }

    pthread_mutex_unlock(&cpu_to_memory_lock);

}


void bus_interface::cpu_to_memory_pop() {

    pthread_mutex_lock(&cpu_to_memory_lock);

    if (!cpu_to_memory.empty()) {
        cpu_to_memory.pop_front();
        current_count[2]--;
    }

    pthread_mutex_unlock(&cpu_to_memory_lock);
}

void* bus_interface::update_process(void* args) {

    pthread_detach(pthread_self());

    std::chrono::milliseconds  timespan(500);
    auto* obj = reinterpret_cast<bus_interface*>(args);

    while (obj->flag) {
        obj->sensors_to_cpu_push(obj->sensor0.get());
        if (obj->pim0.signal_flag) {
            obj->memory_to_cpu_push(obj->pim0.signal_host());
        }

        std::this_thread::sleep_for(timespan);
    }


    pthread_exit(nullptr);

}

void bus_interface::start() {

    flag = 1;

    pthread_create(&ptid, nullptr, (&update_process), this);

}


void bus_interface::stop() {

    flag = 0;

    pthread_join(ptid, nullptr);

}