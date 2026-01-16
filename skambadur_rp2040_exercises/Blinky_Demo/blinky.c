#include <stdio.h>
#include <stdint.h>      // Standard integer types
#include <stdbool.h>     // Standard boolean types
#include "pico/stdlib.h" // Pico SDK standard library

// Define Pins using specific 8-bit integers
const uint8_t LED_PIN = 25;    // Onboard LED
const uint8_t BUTTON_PIN = 15; // External Button

int main() {
    stdio_init_all();

    // Configure LED
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    // Configure Button
    gpio_init(BUTTON_PIN);
    gpio_set_dir(BUTTON_PIN, GPIO_IN);
    gpio_pull_up(BUTTON_PIN); // Button pin is HIGH when not pressed

    while (true) {
        // Read the button state
        // logic: false (0) means pressed because we are using Pull-Up
        bool button_is_pressed = !gpio_get(BUTTON_PIN); 

        if (button_is_pressed) {
            gpio_put(LED_PIN, 1); // LED ON
        } else {
            gpio_put(LED_PIN, 0); // LED OFF
        }
    }
}
