
## Hotspot on hostednetwork supported built-in wifi module


### config

netsh wlan set hostednetwork mode=allow ssid=MySSID  key=MyPassword keyUsage=persistent


### start

netsh wlan start hostednetwork


### stop

netsh wlan stop hostednetwork


## For USB Wifi dongle

### start

netsh interface set interface name="ADAPTER_NAME" admin=disabled
netsh wlan start hostednetwork
netsh interface set interface name="ADAPTER_NAME" admin=enabled


### stop

netsh wlan stop hostednetwork
