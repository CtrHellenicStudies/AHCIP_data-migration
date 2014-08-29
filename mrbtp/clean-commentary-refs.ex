" Clean commentary references - Must run after set-commentary-urn.ex

" The following regexes are for "normal" input files that have
" - a section number followed by a note with a note number.

" Hyphenated reference with note - right side
%s/^\(".\{-}"\),"\(urn.\{-}\):\(.\{-}\)-\([0-9abc]\{-}\)n\([0-9]\{-}\)",/\1,"\2:\3-s_\3.n_\4",/

" Hyphenated reference no note - right side
%s/^\(".\{-}"\),"\(urn.\{-}\):\(.\{-}\)-\([0-9abc]\{-}\)",/\1,"\2:\3-s_\4",/

" Hyphenated reference with note - left side
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9abc]\+\)n\([0-9]*\)-\(.\{-}\)"/\1,"\2:s_\3.n_\4-\5"/

" Hyphenated reference no note - left side
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9abc]\+\)-\(.\{-}\)"/\1,"\2:s_\3-\4"/

" No hyphen with note
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9abc]\+\)n\([0-9]*\)"/\1,"\2:s_\3.n_\4"/

" No hyphen no note
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9abc]\+\)"/\1,"\2:s_\3"/

" These regexes are for input files for works like Homer The Classic that
" - have use a chapter number or name followed by § followed by a section number

" Simple numeric section numbers
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9PC]\+\)§\(\d\+\)"/\1,"\2:c_\3.s_\4"/

" The same, followed by a note with a number
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9PC]\+\)§\(\d\+\)n\([0-9]*\)"/\1,"\2:c_\3.s_\4.n_\5"/

" Now we get into the weird ones with translation numbers - without a note
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9PC]\+\)(t)\(\d\+\)(\([0-9PC]\+\)§\(\d\+\))"/\1,"\2:c_\5.s_\6.t_\4"/
" With a note
%s/^\(".\{-}"\),"\(urn.\{-}\):\([0-9PC]\+\)(t)\(\d\+\)n\(\d*\)(\([0-9PC]\+\)§\(\d\+\))"/\1,"\2:c_\6.s_\7.t_\4.n_\5"/

" Convert the P's to Pros and the C's to Cons
"%s/^\(".\{-}"\),"\(urn.\{-}\):c_P/\1,"\2:c_Pro/
"%s/^\(".\{-}"\),"\(urn.\{-}\):c_C/\1,"\2:c_Con/

" Never change below here
:wq
