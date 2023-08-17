FROM eclipse-mosquitto:2

USER mosquitto
RUN mkdir -p /mosquitto/config
COPY ./configuration/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY --chown=mosquitto:mosquitto ./configuration/passwords /config/passwords
COPY --chown=mosquitto:mosquitto ./configuration/passwords /config/passwords.bac
RUN chmod o-r /config/passwords
RUN chmod o-r /config/passwords.bac
