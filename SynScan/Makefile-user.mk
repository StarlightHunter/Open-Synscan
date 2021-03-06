## Local build configuration
## Parameters configured here will override default and ENV values.
## Uncomment and change examples:
SMING_HOME=/home/vsirvent/src/Sming.new/Sming/

ifndef SMING_HOME
$(error SMING_HOME is not set. Please configure it in Makefile-user.mk)
endif

include $(SMING_HOME)/Makefile-linux.mk

#Add your source directories here separated by space
MODULES = app
SPI_SIZE = 4M
## ESP_HOME sets the path where ESP tools and SDK are located.
## Windows:
# ESP_HOME = c:/Espressif

## MacOS / Linux:
#ESP_HOME = /opt/esp-open-sdk

## SMING_HOME sets the path where Sming framework is located.
## Windows:
# SMING_HOME = c:/tools/sming/Sming 

# MacOS / Linux
# SMING_HOME = /opt/sming/Sming

## COM port parameter is reqruied to flash firmware correctly.
## Windows: 
# COM_PORT = COM3

# MacOS / Linux:
# COM_PORT = /dev/tty.usbserial

# Com port speed
# COM_SPEED	= 115200
#DISABLE_SPIFFS = 1
SPIFF_FILES = web/dev
