/^$/ {}  # do nothing for empty lines
!/^$/ { 
    if (1==startweight) {
        printf("\nParameter w(i) weigths /\n");
        for (i=1; i<=n; i++) printf("n%d %d\n",i,$i);
        printf("$offdelim\n/\n");
        startweight = 0;
    }
    if (1==startprofit) {
        printf("Table p(i,i) profits \n$ondelim\n");
        for (i=0; i<=n; i++) printf("n%d ",i);
        printf("\n"); startprofit = 2; i=1;
    }
    if (2==startprofit) {
        printf("n%d %s\n",i,$0);
        if (n==i)
            startprofit = 0;
        else
            i++;
    }
    if ($2 == "#n:") {
        n = $1;
        printf("$setglobal n %d\nset i /n1*n%d/;\n", n, n);
    }
    if ($2 == "#capacity")
        printf("scalar cap capacity /%d/;\n", $1);
    if ($2 == "#k:")
        printf("scalar ncard cardinality /%d/;\n", $1);
    if ($1 == "#Profits:") startprofit = 1;
    if ($1 == "#Weights:") startweight = 1;
}
