# Split Comma References into Multiple Lines

### Comma References should only be used in the Text Column but ...

## If there are two or more comma-separated references, split off the leftmost one.
## This will need to be repeated a few times to consume all the commas in the input data
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \(.\{-}\)",\(.*\)/\1,"\2\3",\5\r\1,"\2\4",\5/
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \(.\{-}\)",\(.*\)/\1,"\2\3",\5\r\1,"\2\4",\5/
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \(.\{-}\)",\(.*\)/\1,"\2\3",\5\r\1,"\2\4",\5/
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \(.\{-}\)",\(.*\)/\1,"\2\3",\5\r\1,"\2\4",\5/
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \(.\{-}\)",\(.*\)/\1,"\2\3",\5\r\1,"\2\4",\5/

# This regex will split exactly one comma-separated reference into two referencees
%s/^\(".\{-}"\),"\([A-Z][A-Z] \)\([\-0-9§t()PCabc#n]\{-}\), \([\-0-9§t()PCabc#n]\{-}\)\(".*\)/\1,"\2\3\5\r\1,"\2\4\5/

## Some comma references were used erroneously in LMAAIliad.docx
## This regex pulls off the leftmost passage reference
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \(.\{-}\)",\(.*\)/"\1\2",\4\r"\1\3",\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \(.\{-}\)",\(.*\)/"\1\2",\4\r"\1\3",\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \(.\{-}\)",\(.*\)/"\1\2",\4\r"\1\3",\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \(.\{-}\)",\(.*\)/"\1\2",\4\r"\1\3",\4/
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \(.\{-}\)",\(.*\)/"\1\2",\4\r"\1\3",\4/

# This regex splits exactly one passage reference
%s/^"\([IO]\.\d\+\.\)\([\-0-9]\+\), \([\-0-9]\+\)",\(.*\)/"\1\2",\4\r"\1\3",\4/


# Never change below here
wq
