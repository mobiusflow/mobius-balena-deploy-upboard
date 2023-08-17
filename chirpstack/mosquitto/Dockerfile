FROM eclipse-mosquitto:2

USER mosquitto
RUN mkdir -p /mosquitto/config
COPY ./configuration/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY ./configuration/passwords /mosquitto/config/passwords
COPY --chown=mosquitto ./configuration/passwords /config/passwords
