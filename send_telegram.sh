#!/bin/sh

[ -z "$1" ] && echo "empty message" && exit 1

MSG=$1
CHATID="12345678"
BOTID="12345678:AAAAAAAAAAAAAAAAAAAAAAA"


PAYLOAD="{\"chat_id\": \"$CHATID\", \"text\": \"$MSG\", \"disable_notification\": true}"
curl -X POST \
   -H 'Content-Type: application/json' \
   -d "$PAYLOAD" \
   https://api.telegram.org/bot$BOTID/sendMessage

exit $?

