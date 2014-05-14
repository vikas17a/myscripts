echo "Sorted Urls with Count";
awk '{print $7}' 1hour-hkp.log | sort | uniq -c | sort -r;
echo "User count with with their IP";
awk '{print $19}' 1hour-hkp.log | sort | uniq -c | sort -r


