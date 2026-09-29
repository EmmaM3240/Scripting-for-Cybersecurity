#!/bin/bash
# triage.sh — Automatically rebuild triage-report.txt

# Set the case directory (change as needed)
CASE_DIR="case"

# Output file
REPORT="$CASE_DIR/triage-report.txt"

# Ensure case directory exists
if [[ ! -d "$CASE_DIR" ]]; then
    echo "Error: Case directory '$CASE_DIR' not found."
    exit 1
fi

# Start fresh
> "$REPORT"

# Example triage data collection
{
    echo "=== TRIAGE REPORT ==="
    echo "Generated: $(date)"
    echo
    echo "System Info:"
    uname -a
    echo
    echo "Logged-in Users:"
    who
    echo
    echo "Recent Logins:"
    last -n 5
    echo
    echo "Running Processes:"
    ps aux --sort=-%mem | head -n 10
    echo
    echo "Open Network Connections:"
    ss -tuln
} >> "$REPORT"

echo "Triage report saved to $REPORT"
