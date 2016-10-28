#!/bin/bash

set -e

if [ "${1:0:1}" = '-' ]; then
        set -- /usr/local/bin/zcashd "$@"
fi

ZCASH_HOME="/root/.zcash"
ZCASH_CONF="${ZCASH_HOME}/zcash.conf"

if [ ! -f "${ZCASH_CONF}" ]; then
    echo "generate ${ZCASH_CONF}"
    password=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c64)
    printf '%s\n%s\n%s\n%s\n' "rpcuser=zcashrpc" "rpcpassword=${password}" \
           "addnode=${ZCASH_NET}" "gen=1" > ${ZCASH_CONF}
fi

exec "$@"
