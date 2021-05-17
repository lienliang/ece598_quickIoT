//
// Created by eli9 on 5/13/21.
//

#include "host_cpu.h"


host_cpu::host_cpu(bus_interface& _interface) {

    threshold = ALERT_THRESHOLD;
    interface0 = _interface;

}


void host_cpu::fetch(int number) {

    assert(number > 0);

    for (int i = 0; i < number; i++) {
        to_be_processed.push_back(interface0.fetch_from_sensors());
    }

}


void host_cpu::push() {

    while (!results.empty()) {

        interface0.push_to_memory(results.front());

        results.pop_front();
    }

}


void host_cpu::compute() {

    while (to_be_processed.size() >= 3) {

        int mov_average = 0;

        for (int i = 0; i < 3; i++) {
            mov_average += to_be_processed.front().second;
            to_be_processed.pop_front();
        }

        if (mov_average >= 3 * threshold) {
            results.emplace_back(time(nullptr), 1);
        } else {
            results.emplace_back(time(nullptr), 0);
        }

    }

}