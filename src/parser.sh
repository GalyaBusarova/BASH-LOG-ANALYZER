#!/bin/bash

source /Users/busarovagalina/bash-log-analyzer/config.conf

LOG_FILES=$(find $LOG_DIR -name "*.log" -type f)

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

TOTAL_ERRORS=0
TOTAL_FATAL=0
TOTAL_CRITICAL=0

for LOG_FILE in $LOG_FILES; do
    for PATTERN in "${ERROR_PATTERNS[@]}"; do
        PATTERN_COUNT=$(grep -c "$PATTERN" "$LOG_FILE")

        if [ "$PATTERN" == "ERROR" ]; then
            (( TOTAL_ERRORS += PATTERN_COUNT ))
        elif [ "$PATTERN" == "FATAL" ]; then
            (( TOTAL_FATAL += PATTERN_COUNT ))
        elif [ "$PATTERN" == "CRITICAL" ]; then
            (( TOTAL_CRITICAL += PATTERN_COUNT ))
        fi
    done
done

export TOTAL_ERRORS
export TOTAL_FATAL
export TOTAL_CRITICAL