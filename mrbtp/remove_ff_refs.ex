" Remove ff suffixes in column 1 and make a note in column 4

%s/^"\(.\+\)ff\.*","\(.\+\)","\(.\+\)","\(.\+\)"/"\1","\2","\3","\4 [MRBTP: 'ff']"/

" Remove f suffixes in column 1 and make a note in last column
%s/^"\(.\+\)f\.*","\(.\+\)","\(.\+\)","\(.\+\)"/"\1","\2","\3","\4 [MRBTP: 'f']"/

" Never change below here
:wq
