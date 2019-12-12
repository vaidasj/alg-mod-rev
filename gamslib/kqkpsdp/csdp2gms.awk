NR==1 { print "parameter xvec_(*) /\n$offdigit ondelim";
        for (i=1; i<=NF; i++) print "sdpm" i " " $i;
        print "/\nparameter X_(*,*) /"; }
NR>1 && $1==1 { if ($2==1) print "sdpn" $3 " sdpn" $4 " " $5; }
NR>1 && $1==2 { if (0==first) { print "/\nparameter Y_(*,*) /"; first=1; }
                if ($2==1) print "sdpn" $3 " sdpn" $4 " " $5; }
END { print "/"; }
