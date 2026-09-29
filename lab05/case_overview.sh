echo "Directories in the collection:"
find case -type d
echo ""
echo "Size of the collection:"
du -sh case
ls case/logs
echo ""
echo "Log files:"
echo "Done."
echo "Number of regular files in case: $(find case -type f | wc -l)"
