#!/bin/bash

echo "Starting log analysis..."

source ./config.conf
source ./src/parser.sh
source ./src/reporter.sh
source ./src/notifier.sh
send_telegram "Log Analysis Report completed. Errors: $TOTAL_ERRORS, Fatal: $TOTAL_FATAL, Critical: $TOTAL_CRITICAL"


echo "Analysis complete. Report saved."