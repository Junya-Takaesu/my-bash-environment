# Define NTFY_TOPIC in secrets.sh(Do not leak the NTFY_TOPIC to the public, otherwise the TOPIC will be abused!!)
! [ -n "$NTFY_TOPIC" ] && return
# Define SLACK_WEBHOOK_URL in secrets.sh(Do not leak the SLACK_WEBHOOK_URL to the public, otherwise the SLACK_WEBHOOK_URL will be abused!!)
! [ -n "$SLACK_WEBHOOK_URL" ] && return

JSON_PAYLOAD='{\"username\": \"ntfy\", \"text\": \"Command Done\", \"icon_emoji\": \":i-got-notification:\" }'
alias ntfyme="curl --silent -d \"Command Done\" ntfy.sh/$NTFY_TOPIC > /dev/null; curl --silent -X POST --data-urlencode \"payload=$JSON_PAYLOAD\" $SLACK_WEBHOOK_URL > /dev/null"
