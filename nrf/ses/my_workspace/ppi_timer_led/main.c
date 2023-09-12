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
*
* @defgroup gpiote_example_main main.c
* @{
* @ingroup nrf_gpiote_example
* @brief GPIOTE Example Application main file.
*
* This file contains the source code for a sample application using GPIOTE.
*/

#include <stdbool.h>
#include <stdint.h>
#include "nrf.h"
#include "nrf_gpiote.h"
#include "nrf_gpio.h"
#include "boards.h"
#include "nrfx_timer.h"
#include "nrfx_ppi.h"
#include "nrfx_gpiote.h"
#include "nrf_timer.h"
#include "nrf_gpiote.h"
#include "nrf_ppi.h"
#include "nrf_drv_ppi.h"
#include "nrf_drv_timer.h"
#include "nrf_drv_gpiote.h"
#include "app_error.h"


#define LED1    13

static uint32_t tep_led1;
static uint32_t eep_timer0;
static nrf_ppi_channel_t ppi_channel;

//Function prototypes
void gpiote_init();
void timer0_init();
void timer0_evnthndlr();


int main(void)
{
  uint32_t  err_code = NRF_SUCCESS;

  gpiote_init();
  timer0_init();

  //Allocate a PPI channel
  err_code =  nrfx_ppi_channel_alloc(&ppi_channel);
  APP_ERROR_CHECK(err_code);

  //Assign EEPs and TEPs to the PPI channel0
  nrfx_ppi_channel_assign(ppi_channel, eep_timer0, tep_led1);

  //Enable ppi channel
  err_code = nrfx_ppi_channel_enable(ppi_channel);
  APP_ERROR_CHECK(err_code);

    while (true)
    {
        // Do Nothing - GPIO can be toggled without software intervention.
    }
}

void gpiote_init()
{
  uint32_t err_code = NRF_SUCCESS;

  //configure gpiote out task
  nrfx_gpiote_out_config_t out_config = NRFX_GPIOTE_CONFIG_OUT_TASK_TOGGLE(true); //out task to toggle the pin state

  //Initialize gpiote modlue
  err_code = nrfx_gpiote_init();
  APP_ERROR_CHECK(err_code);
  
  //init gpiote for the desired pin- LED1 pin 13
  err_code = nrfx_gpiote_out_init(LED1, &out_config);
  APP_ERROR_CHECK(err_code);

  //Enable gpiote led1 task
  nrfx_gpiote_out_task_enable(LED1);

  //get the address of the gpiote out toggle task for led1
  tep_led1 = nrfx_gpiote_out_task_addr_get(LED1);
  
}

void timer0_init()
{
  uint32_t err_code = NRF_SUCCESS;

  //Timer0 is instatiated
  nrfx_timer_t timer0 = NRFX_TIMER_INSTANCE(0);
  
  //Configure timer 0. Look at the macro for parameter details
  nrfx_timer_config_t tomer0_cfg = NRFX_TIMER_DEFAULT_CONFIG;
  tomer0_cfg.frequency = NRF_TIMER_FREQ_1MHz;
  tomer0_cfg.mode = NRF_TIMER_MODE_TIMER;
  tomer0_cfg.bit_width = NRF_TIMER_BIT_WIDTH_32;
  tomer0_cfg.interrupt_priority = 6;
  
  //from ms to ticks
  uint32_t timer0_ticks = nrfx_timer_ms_to_ticks(&timer0, 500);
  
  //Initialize the timer
  err_code = nrfx_timer_init(&timer0, &tomer0_cfg, timer0_evnthndlr);
  APP_ERROR_CHECK(err_code);

  //setting the timer channel in the extended compare mode.
  nrfx_timer_extended_compare(&timer0, NRF_TIMER_CC_CHANNEL0, timer0_ticks, NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK, false);

  //get timer0 event address
  eep_timer0 = nrfx_timer_event_address_get(&timer0, NRF_TIMER_EVENT_COMPARE0);

  //enable timer0
  nrfx_timer_enable(&timer0);

  
}

void timer0_evnthndlr()
{
  
}


/** @} */
