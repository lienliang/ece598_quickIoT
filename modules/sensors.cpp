//
// Created by eli9 on 5/13/21.
//

#include "sensors.h"


sensors::sensors() {

    seed = std::time(nullptr);
    current = std::pair(seed, 0);
    flag = 0;
    ptid = 0;

}


std::pair<std::time_t, int> sensors::get() const {
    return current;
}

void* sensors::update_process(void* args) {

    pthread_detach(pthread_self());

    auto obj = reinterpret_cast<sensors*>(args);

    srand(obj->seed);

    while (obj->flag) {

        obj->current = std::pair(std::time(nullptr), rand() % 256 + 1);

        std::chrono::milliseconds  timespan(20);
        std::this_thread::sleep_for(timespan);

    }

    pthread_exit(nullptr);

}

void sensors::start() {

    flag = 1;

    pthread_create(&ptid, nullptr, (&update_process), this);


}


void sensors::stop() {

    flag = 0;

    pthread_join(ptid, nullptr);

}


