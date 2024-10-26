# Author : https://github.com/jeonghoonkang 
from pm_auto.pm_auto import PMAuto

config = {
  #"peripherals": ['oled','ws2812','gpio_fan','pwm_fan',],
  "peripherals": ['oled',],
}

temp1 = config["peripherals"]
### print (temp1)

pm = PMAuto(temp1)
### print (pm)

### decide what to run
### 1 shot
pm.onshot()

### periodic every 1 sec.
#pm.start()
