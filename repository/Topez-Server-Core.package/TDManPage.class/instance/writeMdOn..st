as yet unclassified
writeMdOn: aStream
  | lf lflf |
  lf := String lf.
  lflf := lf , lf.
  aStream
    nextPutAll: '##NAME';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self summary copyReplaceAll: String lf with: lflf);
    lf;
    lf;
    nextPutAll: '##SYNOPSIS';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self synopsis copyReplaceAll: String lf with: lflf);
    lf;
    lf;
    nextPutAll: '##DESCRIPTION';
    lf;
    nextPutAll: '  ';
    nextPutAll: (self description copyReplaceAll: String lf with: lflf);
    lf