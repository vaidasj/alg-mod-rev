BEGIN { nr=0 }
!/^#/ {
   if (nr==0) {
     n = $1;
     printf("set n /0*%d/; Scalar p /%d/;\n", n-1,$3);
     printf("Table w(n,n) distances\n$ondelim\nn");
     for (i=0; i<n; i++) printf(",%d",i);
   } if (nr>0)
     printf("\n%d %s",nr-1,$0);
   nr++;
}
END {
   printf("\n$offdelim\n;")
}
