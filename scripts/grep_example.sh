#!/bin/bash
LOGFILE="application.log"

if grep -Eq "ERROR|WARNING" "$LOGFILE"; then
    echo "Errors/warnings found in the log file."
    grep -E "ERROR|WARNING" "$LOGFILE"
else
    echo "No errors found in the log file."
fi