# Pulling Alpine image
FROM alpine:latest

# Updating the packages
RUN apk update && \
apk upgrade --available && sync && \
apk add curl 

# Copying script file into container
COPY heartbeat.sh .

# Giving executable permission to script file
RUN chmod +x heartbeat.sh

CMD sh heartbeat.sh
