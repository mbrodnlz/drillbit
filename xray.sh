#!/bin/sh

if [ ! -f UUID ]; then

  UUID="e0d297a4-2273-461b-9a8c-5a7a5058219f"

fi



# Set config.json

sed -i "s/PORT/$PORT/g" /etc/xray/config.json

sed -i "s/UUID/$UUID/g" /etc/xray/config.json



echo starting xray platform

echo starting with UUID:$UUID

echo listening at 0.0.0.0:$PORT



exec "$@"

