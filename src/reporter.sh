#!/bin/bash

source /Users/busarovagalina/bash-log-analyzer/config.conf
source /Users/busarovagalina/bash-log-analyzer/src/parser.sh

REPORT_FILE="/Users/busarovagalina/bash-log-analyzer/log_analysis_report.txt"

echo "==========Log Analysis Report=============" > "$REPORT_FILE"
echo "==========================================" >> "$REPORT_FILE"

datefmt='%Y-%m-%d %H:%M:%S'
DATA=$(date +"$datefmt")
echo "Date: $DATA" >> "$REPORT_FILE"

echo -e "\nERRORS: $TOTAL_ERRORS" >> "$REPORT_FILE"
echo "FATAL: $TOTAL_FATAL" >> "$REPORT_FILE"
echo "CRITICAL: $TOTAL_CRITICAL" >> "$REPORT_FILE"

if [ "$TOTAL_ERRORS" -gt "$ERROR_THRESHOLD" ]; then
    echo -e "\n⚠️ WARNING: ERROR count ($TOTAL_ERRORS) exceeds threshold ($ERROR_THRESHOLD)!" >> "$REPORT_FILE"
fi

if [ "$TOTAL_FATAL" -gt "$ERROR_THRESHOLD" ]; then
    echo -e "\n⚠️ WARNING: FATAL count ($TOTAL_FATAL) exceeds threshold ($ERROR_THRESHOLD)!" >> "$REPORT_FILE"
fi

if [ "$TOTAL_CRITICAL" -gt "$ERROR_THRESHOLD" ]; then
    echo -e "\n⚠️ WARNING: CRITICAL count ($TOTAL_CRITICAL) exceeds threshold ($ERROR_THRESHOLD)!" >> "$REPORT_FILE"
fi
