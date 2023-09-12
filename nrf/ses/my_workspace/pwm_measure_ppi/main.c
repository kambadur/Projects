
/** @file
*
* @defgroup pwm timer capture main.c
* @{
* @ingroup nrf_gpiote_example
* @brief PWM timre capture using PPI main file.
*
* This file contains the source code for a sample application using GPIOTE.
Timer capture of input PWM on gpiote.
Create LoHi even on ch0 to start timer0 task
Create HiLo event to ch0 to stop timer0 task
Difference should give time periiod  and thereby frequency
Configure PPI channel to to start these two tasks
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


#define pwm_in    11

//Funtion prototypes
static void gpiote_init(void);
static void timer0_init(void);
static void ppi_init();
void dummy_evnthndlr_1(void);
void dummy_evnthndlr_2(void);

static nrfx_timer_t timer0 = NRFX_TIMER_INSTANCE(0);
static nrfx_timer_config_t timer0_cfg0 = NRFX_TIMER_DEFAULT_CONFIG;

int main(void)
{
  unit32_t err_code = NRF_SUCCESS;

  gpiote_init();
  timer0_init();
  ppi_init();
 

    while (true)
    {
        // Do Nothing - GPIO can be toggled without software intervention.
    }
}

//Function definition: gpiote init for pwm input signal
void gpiote_init(void){
  uint32_t err_code = NRF_SUCCESS;

  //GPIOTE module init
  err_code = nrfx_gpiote_init();
  APP_ERROR_CHECK(err_code);
  
  //Input signal is pwm of push-pull type. Hence no need to configure pullup/down.
  nrfx_gpiote_in_config_t in1_config = NRFX_GPIOTE_CONFIG_IN_SENSE_HITOLO(true);
  nrfx_gpiote_in_config_t in2_config = NRFX_GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);

  err_code = nrfx_gpiote_in_init(pwm_in, &in1_config, dummy_evnthndlr_1);
  APP_ERROR_CHECK(err_code);

  err_code = nrfx_gpiote_in_init(pwm_in, &in2_config, dummy_evnthndlr_2);
  APP_ERROR_CHECK(err_code);

  //finally enable the event on pwm_in pin
  nrfx_gpiote_in_event_enable(pwm_in, true);

}

//Function definition: Timer0 init
void timer0_init(void){
  uint32_t err_code = NRF_SUCCESS;
  uint32_t timer0_val;
  uint32_t timer0_val_temp;

  //Init timer module
  nrfx_timer_init(&timer0, &timer0_cfg0, )
  timer0_val = nrfx_timer_capture_get(&timer0, NRF_TIMER_CC_CHANNEL0);
  timer0_val_temp = timer0_val;

  
}

//Function definition: PPI channel init
void ppi_init(void){
}

void dummy_evnthndlr_1(void){
}

void dummy_evnthndlr_2(void){
}

/** @} */
