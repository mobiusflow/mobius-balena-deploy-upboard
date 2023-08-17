FROM eclipse-mosquitto:2

RUN adduser mozzi -u 1883
USER mozzi
RUN mkdir -p /mosquitto/config
COPY ./configuration/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY ./configuration/passwords /mosquitto/config/passwords
COPY ./configuration/passwords /config/passwords
