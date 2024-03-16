# ESP32
Stream JPEG over WebRTC datachannel with ESP32.

## Support List

| Hardware ||
|---|---|
| [ESP32-CAM](https://randomnerdtutorials.com/esp32-cam-video-streaming-web-server-camera-home-assistant/) |<img src="https://i0.wp.com/randomnerdtutorials.com/wp-content/uploads/2019/03/featured-image-esp32-cam-video-streaming-web-server-s.jpg" width="64">|
| [ESP32-EYE](https://github.com/espressif/esp-who/blob/master/docs/en/get-started/ESP-EYE_Getting_Started_Guide.md) |<img src="https://www.espressif.com/sites/default/files/esp-eye-2-190116.png" width="64">|
| [ESP32 M5Camera](https://github.com/m5stack/M5Stack-Camera) |<img src="https://static-cdn.m5stack.com/resource/docs/products/unit/m5camera/m5camera_01.webp" width="64">|

## Instructions

### Install esp-idf
at lease v5.0.0
```bash
$ git clone -b v5.0.2 https://github.com/espressif/esp-idf.git
$ cd esp-idf
$ source install.sh
$ source export.sh
```

### Download
```bash
$ git clone https://github.com/sepfy/libpeer
$ cd libpeer/examples/esp32
$ idf.py add-dependency "espressif/esp32-camera^2.0.4"
$ idf.py add-dependency "mdns"
$ git clone --recursive https://github.com/sepfy/esp_ports.git components/srtp
```

### Configure
```bash
$ idf.py menuconfig
# Choose Example Configuration and change the SSID and password
```

### Build 
```bash
$ idf.py build
```

### Test
```bash
$ idf.py flash
```
Check the serial port message:
```
I (12936) webrtc: MQTT_EVENT_CONNECTED
I (12946) webrtc: sent subscribe successful, msg_id=5876
I (13246) webrtc: MQTT_EVENT_SUBSCRIBED, msg_id=5876
I (13246) webrtc: open browser and visit https://sepfy.github.io/webrtc?deviceId=esp32-xxxxxxxxxxxx
```
Open the browser and visit the website showing by serial port message
![image](https://github.com/sepfy/libpeer/assets/22016807/46df15b1-9e28-4a6b-bf0a-4f676778cf7d)
