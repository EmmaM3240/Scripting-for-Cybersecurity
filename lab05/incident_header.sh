read -p "Enter an incident reference number: " REF
read -p "Enter the reporting analyst: " ANALYST
raed -p "Enter a one-line summary: " SUMMARY
echo "----------------"
echo "Reference : $REF"
echo "Analyst   : $ANALYST"
echo "Summary   : $SUMMARY"
echo "Severity  : $SEVERITY (default — update by hand for now)"
echo "Logged at : $(date)"

