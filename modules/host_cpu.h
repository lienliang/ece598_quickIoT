//
// Created by eli9 on 5/13/21.
//

#ifndef ECE598_SIMULATION_HOST_CPU_H

#include "utilities.h"
#include "bus_interface.h"

class host_cpu{


public:

    host_cpu(bus_interface& _interface);

    std::deque<std::pair<std::time_t, int>> to_be_processed;
    std::deque<std::pair<std::time_t, int>> results;

    int threshold;
    bus_interface interface0;

    void fetch(int number);
    void push();
    void compute();

};

#define ECE598_SIMULATION_HOST_CPU_H

#endif //ECE598_SIMULATION_HOST_CPU_H
