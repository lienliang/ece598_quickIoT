#include <iostream>
#include "modules/modules.h"

int main(int argc, char **argv) {


    int n_samples = 10;

    if (argc >= 2) {
        n_samples = atoi(argv[1]);
        if(n_samples <= 0) { printf("Wrong argument\n"); exit(1); }
    }

    std::cout << "Simulation for QuickIoT " << n_samples << " timestamps" << std::endl;

    sensors fire_detector = sensors();

    PIM pim0 = PIM();

    bus_interface quick_iot = bus_interface(fire_detector, pim0);

    host_cpu cpu0 = host_cpu(quick_iot);


    fire_detector.start();

    quick_iot.start();
    std::chrono::milliseconds  timespan(20);
    /*for (int i = 0; i < 10; i++) {
        std::cout << fire_detector.get().second << std::endl;
        std::this_thread::sleep_for(timespan);
    }*/


    // host side CPU

    auto start = std::chrono::high_resolution_clock::now();

    cpu0.fetch(n_samples);

    cpu0.compute();

    cpu0.push();

    auto end = std::chrono::high_resolution_clock::now();

    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    std::cout << duration.count() << std::endl;

    // PIM side
    start = std::chrono::high_resolution_clock::now();

    pim0.process(n_samples, fire_detector);

    end = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    std::cout << duration.count() << std::endl;

    quick_iot.stop();

    fire_detector.stop();

    return 0;
}
