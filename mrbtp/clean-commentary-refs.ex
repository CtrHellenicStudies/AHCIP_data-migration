" Clean commentary references - Should after set-commentary-urn.ex

" Hyphenated reference with note - right side
%s/^\(".\{-}"\),"\(urn.*\):\(.\{-}\)-\([0-9a-mo-su-z]\+\)n\([0-9]*\)"/\1,"\2:\3-s_\3.n_\4"/

" Hyphenated reference no note - right side
%s/^\(".\{-}"\),"\(urn.*\):\(.\{-}\)-\([0-9a-mo-su-z]\+\)"/\1,"\2:\3-s_\4"/

" Hyphenated reference with note - left side
%s/^\(".\{-}"\),"\(urn.*\):\([0-9a-mo-su-z]\+\)n\([0-9]*\)-\(.\{-}\)"/\1,"\2:s_\3.n_\4-\5"/

" Hyphenated reference no note - left side
%s/^\(".\{-}"\),"\(urn.*\):\([0-9a-mo-su-z]\+\)-\(.\{-}\)"/\1,"\2:s_\3-\4"/

" No hyphen with note
%s/^\(".\{-}"\),"\(urn.*\):\([0-9a-mo-su-z]\+\)n\([0-9]*\)"/\1,"\2:s_\3.n_\4"/

" No hyphen no note
%s/^\(".\{-}"\),"\(urn.*\):\([0-9a-mo-su-z]\+\)"/\1,"\2:s_\3"/

" Never change below here
:wq
