#!/bin/ash

export $(cat /doorbell/.env | xargs)

echo "OK"

if [ ! -z "${PULSE_SINK}" ]; then
  /usr/bin/paplay -d ${PULSE_SINK} ${DOORBELL_SOUND} &
else
  /usr/bin/paplay ${DOORBELL_SOUND} &
fi

