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
#define B1      11


//Function prototypes
void gpiote_init(void);
void ppi_init(void);
void dummy_gpiote_in_evnthndlr(void);

nrf_ppi_channel_t ppi_channel;


int main(void)
{
  uint32_t  err_code = NRF_SUCCESS;

  gpiote_init();
  ppi_init();

    while (true)
    {
        // Do Nothing - GPIO can be toggled without software intervention.
    }
}

//gpiote init function definition
void gpiote_init(void)
{
  //In Event Initialization
  uint32_t err_code = NRF_SUCCESS;

  //Initialize GPIOTE Module for in and out
  err_code = nrfx_gpiote_init();
  APP_ERROR_CHECK(err_code);

  nrfx_gpiote_in_config_t in_config = NRFX_GPIOTE_CONFIG_IN_SENSE_HITOLO(true); //hi_accu set to true
  //note that in the above default macro, no pullup is configured. We nede to set it manually
  in_config.pull = NRF_GPIO_PIN_PULLUP; //this is very important, else there are no input sensing.
  
  err_code = nrfx_gpiote_in_init(B1, &in_config, dummy_gpiote_in_evnthndlr);
  APP_ERROR_CHECK(err_code);

  // Enabling sensing of a GPIOTE input pin.
  nrfx_gpiote_in_event_enable(B1, true);  //true-> interrupt is enabled

  //Out Task Initialization
  nrfx_gpiote_out_config_t out_config = NRFX_GPIOTE_CONFIG_OUT_TASK_TOGGLE(false);

  //gpiote out init
  err_code = nrfx_gpiote_out_init(LED1, &out_config);
  APP_ERROR_CHECK(err_code);

  //gpiote out tsk enable
  nrfx_gpiote_out_task_enable(LED1);

}

//ppi init function definition
void ppi_init(void)
{
  uint32_t err_code = NRF_SUCCESS;
  uint32_t tep_led1;
  uint32_t eep_b1;
  
  //Allocate ppi channel
  err_code = nrfx_ppi_channel_alloc(&ppi_channel);
  APP_ERROR_CHECK(err_code);

  //Assign eep and tep to the alocated ppi channel
  //1. get eep address for the B1 event
  eep_b1 = nrfx_gpiote_in_event_addr_get(B1);
  //2. get the tep address for the LED1 task
  tep_led1 = nrfx_gpiote_out_task_addr_get(LED1);
  //3. Assign the end points to ppi channel
  err_code = nrfx_ppi_channel_assign(ppi_channel, eep_b1, tep_led1);
  APP_ERROR_CHECK(err_code);

  //Enable ppi channel
  err_code = nrfx_ppi_channel_enable(ppi_channel);
  APP_ERROR_CHECK(err_code);
  
}

void dummy_gpiote_in_evnthndlr(void){
}


/** @} */

