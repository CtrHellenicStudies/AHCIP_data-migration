" Move parenthetic notes to column 4
%s/^"\(.\+\) [(]\(.\+\)[)]","\(.\+\)","\(.\+\)","\(.\+\)"/"\1","\3","\4","\5 [MRBTP: \2]"/

" Never change below here
:wq
