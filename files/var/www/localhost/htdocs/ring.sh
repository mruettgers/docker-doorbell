#!/usr/bin/haserl
content-type: text/plain

OK
<%

export $(cat /doorbell/.env | xargs)

PULSE_SINK=${GET_pulse_sink:-${PULSE_SINK}}
PULSE_VOLUME=${GET_pulse_volume:-""}
DOORBELL_SOUND=${GET_doorbell_sound:-${DOORBELL_SOUND}}

ARGS=""
if [ ! -z "${PULSE_SINK}" ]; then
  ARGS="${ARGS} -d ${PULSE_SINK}"
fi

if [ ! -z "${PULSE_VOLUME}" ]; then
  ARGS="${ARGS} --volume=${PULSE_VOLUME} "
fi

/usr/bin/paplay ${ARGS} ${DOORBELL_SOUND}

%>