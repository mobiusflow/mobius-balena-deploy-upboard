FROM chirpstack/chirpstack:4

COPY --chown=nobody:nobody ./configuration/ /etc/chirpstack/
RUN chmod 777 /etc/chirpstack/chirpstack.toml
