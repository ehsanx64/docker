docker run --name mos --rm -it -p 1883:1883 -p 9001:9001 \
    -v ./mosquitto.conf:/mosquitto/config/mosquitto.conf  eclipse-mosquitto 
