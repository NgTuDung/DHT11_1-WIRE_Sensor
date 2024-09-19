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

#ifndef DHT11_H
#define DHT11_H

#include <stdint.h>
#include <stdbool.h>



/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void DHT11_ReadData(uint8_t* tem, uint8_t* de_tem, uint8_t* hum, uint8_t* de_hum);

#endif  // DHT11_H
