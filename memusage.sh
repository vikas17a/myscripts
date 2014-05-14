#to check the memory usage
printf "Total Memory : ";
free | awk '/^Mem:/   { printf( "%s\n",$2); }';
printf "Free Memory : ";
free | awk '/^Mem:/ { printf( "%s\n",$3); }';
echo "";
