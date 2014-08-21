# Split Slash References into Multiple Lines

### Slash References should only be used in the Passage Column

# For Iliad and Odyssey lines
## Two or more slashes - split off the leftmost one ... need to repeat
## this one a few times to consume max number of slashes in input data
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
## Exactly one slash - split into two references
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\)\/\([\-0-9]\+\)"\(.*\)/"\1\2"\4\r"\1\3"\4/

# For Homeric Hymn lines
## Two or more slashes - split off the leftmost one ... ditto above
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\/\-0-9]\+"\)\(.*\)/"\1\2"\4\r"\1\3\4/
## Exactly one slash
%s/^"\(HH[a-zA-Z0-9]\+\.\)\([\-0-9]\+\)\/\([\-0-9]\+\)"\(.*\)/"\1\2"\4\r"\1\3"\4"/

# Never change below here
wq
