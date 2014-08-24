# Remove ff suffixes in column 1 and make a note in last column

%s/^"\(.\+\)ff\.*","\(.\+\)","\(.\+\)","\(.\+\)"/"\1","\2","\3","\4 [MRBTP removed 'ff']"

# Remove f suffixes in column 1 and make a note in last column
%s/^"\(.\+\)f\.*","\(.\+\)","\(.\+\)","\(.\+\)"/"\1","\2","\3","\4 [MRBTP removed 'f']"

# Never change below here
wq
