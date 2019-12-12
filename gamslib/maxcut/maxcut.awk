NR==1 { print "set n /1*" $1 "/";
       print "parameter w(n,n) /\n$ondelim" }
NR>1  { print $0 }
END   { print "\n$offdelim\n/;" }
