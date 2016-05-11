#!/usr/bin/env bash



RESULT="$(ntpq -pn 2>&1)"


 
if [[ $RESULT == *"ntpq: read: Connection refused"* ]]
then
  /usr/sbin/service ntp stop
  /usr/sbin/service ntp start
fi

