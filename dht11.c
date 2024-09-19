/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include <dht11.h>
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "app_log.h"
#include <stdint.h>
#include "em_adc.h"
#include "sl_udelay.h"

#define DHT11_PORT gpioPortB
#define DHT11_PIN  2



/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void DHT11_ReadData(uint8_t* tem, uint8_t* de_tem, uint8_t* hum, uint8_t* de_hum) {
    uint8_t timer = 0;
    uint8_t i = 0;
    uint8_t data[5] = {0};

    //uint8_t timer_values[40] = {0};

    // Bắt đầu giao tiếp với DHT11

    //Khoi tao cho do OUTPUT
    CMU_ClockEnable(cmuClock_GPIO, true);
    GPIO_PinModeSet(DHT11_PORT, DHT11_PIN, gpioModePushPull, 0);

    GPIO_PinOutClear(DHT11_PORT, DHT11_PIN);
    sl_udelay_wait(18000);  // 18ms delay

    //Khoi tao che do INPUT
    CMU_ClockEnable(cmuClock_GPIO, true);
    GPIO_PinModeSet(DHT11_PORT, DHT11_PIN, gpioModeInput, 0);

    sl_udelay_wait(40);
    while(GPIO_PinInGet(DHT11_PORT,DHT11_PIN)==0);
    while(GPIO_PinInGet(DHT11_PORT,DHT11_PIN)==1);

    while (i < 40) {
        while (GPIO_PinInGet(DHT11_PORT, DHT11_PIN) == 0);
        timer = 0;
        while (GPIO_PinInGet(DHT11_PORT, DHT11_PIN) == 1) {
            timer++;
            sl_udelay_wait(1);  // 1us delay
        }

        //timer_values[i] = timer;


        data[i / 8] <<= 1;
        if (timer > 10) {
            data[i / 8] |= 1;
        }
        i++;
    }
    if ((i >= 40) && (data[4] == ((data[0] + data[1] + data[2] + data[3]) & 0xFF))) {
        *tem = data[2];
        *hum = data[0];
        *de_tem = data[3];
        *de_hum = data[1];

    } else {
        *hum = -1;
        *tem = -1;
    }
    /*app_log_info("Timer values:\n");
    for (int j = 0; j < 40; j++) {
        app_log_info("%d ", timer_values[j]);
    }
    app_log_info("\n");*/
}
