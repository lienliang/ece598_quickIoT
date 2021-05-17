//
// Created by eli9 on 5/13/21.
//

#include "utilities.h"

#include "PIM.h"
#include "sensors.h"

#ifndef ECE598_SIMULATION_BUS_INTERFACE_H


class bus_interface{

public:
    bus_interface();
    bus_interface(sensors& _sensor, PIM& _pim);
    ~bus_interface();

    static void* update_process(void* args);

    std::pair<std::time_t, int> fetch_from_sensors();
    int push_to_memory(std::pair<std::time_t, int> input);
    std::pair<std::time_t, int> fetch_from_memory();

    std::deque<std::pair<std::time_t, int>> sensors_to_cpu;
    std::deque<std::pair<std::time_t, int>> memory_to_cpu;
    std::deque<std::pair<std::time_t, int>> cpu_to_memory;
    std::deque<std::pair<std::time_t, int>> slow_stack;

    sensors sensor0;
    PIM pim0;

    std::vector<int> current_count;
    int bandwidth_limit;
    int flag;

    pthread_t ptid;
    pthread_mutex_t sen_to_cpu_lock{};
    pthread_mutex_t memory_to_cpu_lock{};
    pthread_mutex_t cpu_to_memory_lock{};

    void sensors_to_cpu_push(std::pair<std::time_t, int> current);
    void sensors_to_cpu_pop();
    void memory_to_cpu_push(std::pair<std::time_t, int> current);
    void memory_to_cpu_pop();
    void cpu_to_memory_push(std::pair<std::time_t, int> current);
    void cpu_to_memory_pop();

    void start();
    void stop();

};

#define ECE598_SIMULATION_BUS_INTERFACE_H

#endif //ECE598_SIMULATION_BUS_INTERFACE_H
