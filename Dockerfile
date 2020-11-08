FROM debian:stable
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Pre-reqs
RUN apt update && \
    apt install --no-install-recommends -y python3-paho-mqtt python3-requests && \
    rm -rf /var/lib/apt/lists/*

# Copy files into place
COPY openweathermaps2mqtt /

# Set the entrypoint
ENTRYPOINT ["/openweathermaps2mqtt"]
