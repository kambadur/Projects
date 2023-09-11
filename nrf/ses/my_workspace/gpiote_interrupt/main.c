/**
 * Copyright (c) 2014 - 2019, Nordic Semiconductor ASA
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 *
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 *
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 *
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
/** @file
 * @defgroup pin_change_int_example_main main.c
 * @{
 * @ingroup pin_change_int_example
 * @brief Pin Change Interrupt Example Application main file.
 *
 * This file contains the source code for a sample application using interrupts triggered by GPIO pins.
 *
 */

#include <stdbool.h>
#include <stdio.h>
#include "nrf.h"
#include "nrf_gpio.h"
#include "nrf_drv_gpiote.h"
#include "nrfx_gpiote.h"
#include "app_error.h"
#include "boards.h"
#include "nrf_log.h"

#define LED1  13
#define B1    11

//function prototypes
void gpio_init();
void isr_gpiote_led1(nrfx_gpiote_pin_t pin, nrf_gpiote_polarity_t action);

/**
 * @brief Function for application main entry.
 */
int main(void)
{
    gpio_init();

    while (true)
    {
        // Do nothing.
    }
}


void gpio_init()
{
  ret_code_t  err_code;           //return error code, helps for debugging
  //nrfx_err_t err_code;

  // gpiote module init
  err_code = nrfx_gpiote_init();  
  
  //nrf_log over uart/rtt 
  APP_ERROR_CHECK(err_code);      
  
  // led and button init
  nrf_gpio_cfg_output(LED1);
  //nrf_gpio_cfg_input(B1, NRF_GPIO_PIN_PULLUP);

  nrfx_gpiote_in_config_t  button1_pin_config;
  button1_pin_config.hi_accuracy = true;
  button1_pin_config.sense = NRF_GPIOTE_POLARITY_HITOLO;
  button1_pin_config.pull = NRF_GPIO_PIN_PULLUP;

  //Initialize the gpiote for B1
  err_code = nrfx_gpiote_in_init(B1, &button1_pin_config, isr_gpiote_led1);
  APP_ERROR_CHECK(err_code); 

  //Enable in event on B1
  nrfx_gpiote_in_event_enable(B1, true);

}


void isr_gpiote_led1(nrfx_gpiote_pin_t pin, nrf_gpiote_polarity_t action)
{
  //Event handler
  //Toggle Led1 when the button state changes from Hi to Lo
  nrf_gpio_pin_toggle(LED1);
}

/** @} */
