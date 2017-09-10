#!/bin/bash
set -e

############ /logs ######################

############ /config ######################
if [[ ! -s "/config/supervisord.conf" ]]; then
    cp /default/supervisord.conf /config/supervisord.conf
fi

if [[ ! -s "/config/parity.conf" ]]; then
    cp /default/parity.conf /config/parity.conf
fi

############ /data ######################

############ /secrets ######################

exec /usr/bin/supervisord -c /config/supervisord.conf
