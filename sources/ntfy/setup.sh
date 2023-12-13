# Define NTFY_TOPIC in sources/custom-hooks/.hooks/ntfy-topic.sh(Do not leak the NTFY_TOPIC to the public, otherwise the TOPIC will be abused!!)
[ -n "$NTFY_TOPIC" ] && alias ntfyme="curl --silent -d \"Command Done\" ntfy.sh/$NTFY_TOPIC > /dev/null"
