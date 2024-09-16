# OLED, LED driver for Pironman5 sunfounder case
- using PMAuto class for run hardware peripherals
- should have pmauto, and sf_rpi_status package
  - https://github.com/sunfounder/pm_auto
  - https://github.com/sunfounder/sf_rpi_status  

## detials of installation and run
- https://github.com/jeonghoonkang/selfcloud/tree/main/devel_opment/pironman5

## Installation SUNFOUNDER SW Pironman5
- Pironman5 sometimes (not always) crashss when restart Pironman5 service by systemctl
<pre>
cd ~
git clone https://github.com/sunfounder/pironman5.git
cd ~/pironman5
sudo python3 install.py
</pre>

- Web dashboard port : 34001
- influxdb : 8086
