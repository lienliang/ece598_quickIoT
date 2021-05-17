//
// Created by eli9 on 5/13/21.
//

#include "PIM.h"


PIM::PIM() {

    threshold = ALERT_THRESHOLD;
    signal_flag = 0;

}


void PIM::process(int number, sensors& sensor0) {

    std::time_t time0 = (sensor0.get().first);

    for (int i = 0; i < number; i++) {

        int mov_average = 0;

        for (int j = 0; j < 3; j++) {
            auto current = sensor0.get();
            while(current.first != time0) {
                mov_average += current.second;
                time0 = current.first;
            }
        }

        if (mov_average >= 3 * threshold) {
            results.emplace_back(time(nullptr), 1);
            signal_flag = 1;
        } else {
            results.emplace_back(time(nullptr), 0);
        }

    }

}


std::pair<std::time_t, int> PIM::signal_host() {

    if (results.empty()) {
        signal_flag = 0;
        return std::pair(-1, -1);
    }

    auto current = results.front();
    results.pop_front();

    if (results.empty()) {
        signal_flag = 0;
    }

    return current;
}