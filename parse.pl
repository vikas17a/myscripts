
#Log parsing Perl Script Please change the value of $LOGFILE with the name of log file

#$LOGFILE = "localhost_access_log.2014-05-13.txt";
$LOGFILE = "access.log";
open(LOGFILE) or die("Could not open log file.");
foreach $line (<LOGFILE>) {
    ($site, $logName, $fullName, $date, $gmt,$req, $file, $proto, $status, $length) = split(' ',$line);
    $time = substr($date, 13);
    $date = substr($date, 1, 11);
    $req  = substr($req, 1);
    chop($gmt);
    chop($proto);
    # do line-by-line processing.
	print "IP : $site --- Request : $req --- Status : $status --- Date : $date\n";
}
close(LOGFILE);

