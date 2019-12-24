#!/usr/bin/haserl
content-type: text/plain

OK
<%

export $(cat /doorbell/.env | xargs)

PULSE_SINK=${GET_pulse_sink:-${PULSE_SINK}}
DOORBELL_SOUND=${GET_doorbell_sound:-${DOORBELL_SOUND}}

if [ ! -z "${PULSE_SINK}" ]; then
  /usr/bin/paplay -d ${PULSE_SINK} ${DOORBELL_SOUND} &      
else
  /usr/bin/paplay ${DOORBELL_SOUND} &     
fi

%>
