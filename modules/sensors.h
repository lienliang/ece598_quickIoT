//
// Created by eli9 on 5/13/21.
//

#include "utilities.h"


#ifndef ECE598_SIMULATION_SENSORS_H




class sensors {

public:
    sensors();
    [[nodiscard]] std::pair<std::time_t, int> get() const;
    std::time_t seed;
    int flag;
    std::pair<std::time_t, int> current;

    static void *update_process(void* args);

    void start();
    void stop();

private:

    pthread_t ptid;

};

#define ECE598_SIMULATION_SENSORS_H

#endif //ECE598_SIMULATION_SENSORS_H
