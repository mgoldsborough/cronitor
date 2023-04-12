#!/bin/sh

# if the heartbeat name doesnt exist, exit.
if [[ -z "${MONITOR_KEY}" ]]; then
	echo "ERROR: MONITOR_KEY not set"
	exit 1
fi

# if the API key doesn't exist, exit.
if [[ -z "${API_KEY}" ]]; then
	echo "ERROR: API_KEY not set"
	exit 1
fi

# number of seconds to sleep between heartbeats
if [[ -z "${SLEEP_SECONDS}" ]]; then
	SLEEP_SECONDS=60
else
	SLEEP_SECONDS=${SLEEP_SECONDS}
fi

API_ENDPOINT="https://cronitor.link/p/${API_KEY}/${MONITOR_KEY}"

echo "API Endpoint '${API_ENDPOINT}'"

# ping the API on a set interval
while [ 1 ] 
do
	echo "Current date and time is " "$(date +%D-%H:%M)"
	
	curl "https://cronitor.link/p/${API_KEY}/${MONITOR_KEY}"
	
	sleep ${SLEEP_SECONDS}
done
