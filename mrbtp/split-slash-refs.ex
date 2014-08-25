" Split Slash References into Multiple Lines

" Slash References should only be used in the Passage Column

" Part I: Compressed Slash References in Column 1
"  (e.g.: I.24.748-759/762-775 )
" (a) For Iliad and Odyssey lines
" Two or more slashes - split off the leftmost one ... need to repeat
" this one a few times to consume max number of slashes in input data
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
" Exactly one slash - split into two references
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\-0-9]\+\)"\(.*\)/"\1\2"\4\r"\1\3"\4/

" (b) For Homeric Hymn lines
" Two or more slashes - split off the leftmost one ... ditto above
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
" Exactly one slash
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\-0-9]\+\)"\(.*\)/"\1\2"\4\r"\1\3"\4"/

" Part II: Ian's lines combined multiple books that referred to the
" same commentary (e.g.: O.14.337 / O.14.333 / O.14.334 / O.14.338)

" For some reason, Ian used "Il" instead of "I"
%s/^"\([IO]\.[^"]\{-}\)Il\([^"]\{-}\)"\(.*\)/"\1I\2"\3/

" And also ended some lines with extraneous spaces
%s/^"\([IO]\.[^"]\{-}\) *"\(.*\)/"\1"\2/

" And now split his slash references
%s/^"\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/
%s/^" *\([IO]\.\d\+\.[\-0-9]\+[a-z()A-Z ]\{-}\)\/ \(.\{-}\)",\(.*\)/"\1",\3\r"\2",\3/

" Clean up trailing spaces in column 1
%s/^"\([IO]\.[^"]\{-}\) *"\(.*\)/"\1"\2/

" Never change below here
:wq
