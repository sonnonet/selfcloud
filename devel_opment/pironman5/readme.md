## Driver
- https://github.com/sunfounder/pm_auto
### run
- PMAuto class which will run peripherals
- <code> sudo python3 sonno_oled.py </code>
  
## Before installation
### require to install 
<pre>
mv pm_auto_main/pm_auto/ .
mv sf_rpi_status_main/sf_rpi_status/ ./
sudo python3 sonno_oled.py 
sudo mv /usr/lib/python3.12/EXTERNALLY-MANAGED /usr/lib/python3.12/EXTERNALLY-MANAGED_OLD
sudo pip3 install smbus2 
sudo pip3 install board
sudo pip3 install adafruit-circuitpython-neopixel
sudo pip3 install adafruit-circuitpython-neopixel-spi
sudo apt-get install python3-dev 
sudo apt-get install python3-rpi.gpio
</pre>



## Using PMAuto
- pmauto, sf_rpi_status
  - https://github.com/sunfounder/sf_rpi_status
    
### Modification
- pm_auto.py
  - change \_\_init\_\_ parameter which should get moving config=DEFAULT_CONFIG to inside the function 
  - change to <img width="580" alt="image" src="https://github.com/user-attachments/assets/cd10f814-5b7e-4aca-a5cc-a1ffdb218d0c">

