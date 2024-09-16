#!/bin/bash

LOGFILE="/home/janarbek/scripts/log_mail.txt"

if ping -c 1 -w 5 mail.ru > /dev/null; then
  echo "Ping results for $(date)" >> "$LOGFILE"
  ping -c 50 mail.ru >> "$LOGFILE"
  echo "" >> "$LOGFILE"
else
  echo "Mail.ru не работает at $(date)" >> "$LOGFILE"
fi

