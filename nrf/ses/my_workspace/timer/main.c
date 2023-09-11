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
 * @defgroup nrf_dev_timer_example_main main.c
 * @{
 * @ingroup nrf_dev_timer_example
 * @brief Timer Example Application main file.
 *
 * This file contains the source code for a sample application using Timer0.
 *
 */

#include <stdbool.h>
#include <stdint.h>
#include "nrf.h"
#include "nrf_drv_timer.h"
#include "nrf_timer.h"
#include "nrfx_timer.h"
#include "nrf_log.h"
#include "bsp.h"
#include "app_error.h"

#define TIMER_LENGTH_MS  500U    //timer value in ms
#define LED1  13

//function prototypes
void timer0_init();
void evthndl_timer0(nrf_timer_event_t event_type, void * p_context);

uint32_t  err_code = NRF_SUCCESS;
uint32_t  timer_val_ticks;
static const nrfx_timer_t timer0_cgf0        = NRFX_TIMER_INSTANCE(0); //Timer0 enabled


/**
 * @brief Function for main application entry.
 */
int main(void)
{
  
  //Init led1
  nrf_gpio_cfg_output(LED1);
  
  //Init timer0
  timer0_init();

    while (1)
    {
    //uint32_t timer_capture_val = nrfx_timer_capture(&timer0_cgf0, NRF_TIMER_CC_CHANNEL0);
        //__WFI();
    }
}


void timer0_init()
{

  nrfx_timer_config_t timer0_cgf1;
  //NRFX_TIMER_DEFAULT_CONFIG

  timer0_cgf1.frequency           =   NRF_TIMER_FREQ_16MHz;
  timer0_cgf1.bit_width           =   NRF_TIMER_BIT_WIDTH_32;
  timer0_cgf1.mode                =   NRF_TIMER_MODE_TIMER;
  timer0_cgf1.interrupt_priority  = NRFX_TIMER_DEFAULT_CONFIG_IRQ_PRIORITY;
  timer0_cgf1.p_context           = NULL;

  err_code = nrfx_timer_init(&timer0_cgf0, &timer0_cgf1, evthndl_timer0);
  APP_ERROR_CHECK(err_code);

  //timer0 ms to ticks
  timer_val_ticks= nrfx_timer_ms_to_ticks(&timer0_cgf0, TIMER_LENGTH_MS);
  //timer_capture_val = nrfx_timer_capture(&timer0_cgf0, NRF_TIMER_CC_CHANNEL0);
  //timer_capture_val = nrf_timer_cc_read(&timer0_cgf0, NRF_TIMER_CC_CHANNEL0);

  //enable int on timer0
  nrfx_timer_extended_compare(&timer0_cgf0, NRF_TIMER_CC_CHANNEL0, timer_val_ticks, NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK, true);
  
  //Clear the timer once
  nrfx_timer_clear(&timer0_cgf0);
  //Enable the timer
  nrfx_timer_enable(&timer0_cgf0);

}

void evthndl_timer0(nrf_timer_event_t event_type, void * p_context)
{
  if(event_type == NRF_TIMER_EVENT_COMPARE0)
  {
    nrf_gpio_pin_toggle(LED1);
  }

}

/** @} */
