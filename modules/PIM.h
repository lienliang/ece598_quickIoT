//
// Created by eli9 on 5/13/21.
//

#ifndef ECE598_SIMULATION_PIM_H

#include "utilities.h"
#include "sensors.h"

class PIM{
public:
    PIM();


    //std::deque<std::pair<std::time_t, int>> to_be_processed;
    std::deque<std::pair<std::time_t, int>> results;

    int threshold;

    void process(int number, sensors& sensor0);
    std::pair<std::time_t, int> signal_host();

    int signal_flag;

};

#define ECE598_SIMULATION_PIM_H

#endif //ECE598_SIMULATION_PIM_H
