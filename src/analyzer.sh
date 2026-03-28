#!/bin/bash

echo "Starting log analysis..."

source /Users/busarovagalina/bash-log-analyzer/config.conf
source /Users/busarovagalina/bash-log-analyzer/src/parser.sh
source /Users/busarovagalina/bash-log-analyzer/src/reporter.sh

echo "Analysis complete. Report saved."