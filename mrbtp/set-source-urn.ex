" Transformation of Primary Source to CTS URNs
" - Also expands range references in Iliad and Odyssey
" - Range refs in Homeric Hymns should not need to expand

" Iliad
%s/^"I\./"urn:cts:greekLit:tlg0012.tlg001:/

" Expand Iliad range references
%s/greekLit:tlg0012.tlg001:\(\d\+\)\.\([0-9a-z]\+\)-\([0-9a-z]\+\)/greekLit:tlg0012.tlg001:\1.\2-\1.\3/

" Odyssey
%s/^"O\./"urn:cts:greekLit:tlg0012.tlg002:/

" Expand Odyssey range references
%s/greekLit:tlg0012.tlg002:\(\d\+\)\.\([0-9a-z]\+\)-\([0-9a-z]\+\)/greekLit:tlg0012.tlg002:\1.\2-\1.\3/

" Homeric Hymns
" - Note that some of these patterns have never been seen in existing
" - input data files, but are included for completeness
" - 
" - Also note that the regexes for the five that don't get numbers go
" - at the end.

" Dionysus / Dione (1)
%s/^"HH1Dione\./"urn:cts:greekLit:tlg0013.tlg001:/
%s/^"HH1Dionysus\./"urn:cts:greekLit:tlg0013.tlg001:/
%s/^"HH1\./"urn:cts:greekLit:tlg0013.tlg001:/
%s/^"HH\.1\./"urn:cts:greekLit:tlg0013.tlg001:/
%s/^"HHDione\.1\./"urn:cts:greekLit:tlg0013.tlg001:/
%s/^"HHDionysus\.1\./"urn:cts:greekLit:tlg0013.tlg001:/

" Demeter (2)
%s/^"HH2Demeter\./"urn:cts:greekLit:tlg0013.tlg002:/
%s/^"HH2\./"urn:cts:greekLit:tlg0013.tlg002:/
%s/^"HH\.2\./"urn:cts:greekLit:tlg0013.tlg002:/
%s/^"HHDemeter\.2\./"urn:cts:greekLit:tlg0013.tlg002:/

" Apollo (3)
%s/^"HH3Apollo\./"urn:cts:greekLit:tlg0013.tlg003:/
%s/^"HH3\./"urn:cts:greekLit:tlg0013.tlg003:/
%s/^"HH\.3\./"urn:cts:greekLit:tlg0013.tlg003:/
%s/^"HHApollo\.3\./"urn:cts:greekLit:tlg0013.tlg003:/

" Hermes (4)
%s/^"HH4Hermes\./"urn:cts:greekLit:tlg0013.tlg004:/
%s/^"HH4\./"urn:cts:greekLit:tlg0013.tlg004:/
%s/^"HH\.4\./"urn:cts:greekLit:tlg0013.tlg004:/
%s/^"HHHermes\.4\./"urn:cts:greekLit:tlg0013.tlg004:/

" Aphrodite (5)
%s/^"HH5Aphrodite\./"urn:cts:greekLit:tlg0013.tlg005:/
%s/^"HH5\./"urn:cts:greekLit:tlg0013.tlg005:/
%s/^"HH\.5\./"urn:cts:greekLit:tlg0013.tlg005:/
%s/^"HHAphrodite\.5\./"urn:cts:greekLit:tlg0013.tlg005:/

" Aphrodite (6)
%s/^"HH6Aphrodite\./"urn:cts:greekLit:tlg0013.tlg006:/
%s/^"HH6\./"urn:cts:greekLit:tlg0013.tlg006:/
%s/^"HH\.6\./"urn:cts:greekLit:tlg0013.tlg006:/
%s/^"HHAphrodite\.6\./"urn:cts:greekLit:tlg0013.tlg006:/

" Dionysus / Dione (7)
%s/^"HH7Dione\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HH7Dionysus\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HH7\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HH\.7\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HHDione\.7\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HHDionysus\.7\./"urn:cts:greekLit:tlg0013.tlg007:/

" Ares (8)
%s/^"HH8Ares\./"urn:cts:greekLit:tlg0013.tlg008:/
%s/^"HH8n\./"urn:cts:greekLit:tlg0013.tlg008:/
%s/^"HH\.8\./"urn:cts:greekLit:tlg0013.tlg008:/
%s/^"HHAres\.8\./"urn:cts:greekLit:tlg0013.tlg008:/

" Artemis (9)
%s/^"HH9Artemis\./"urn:cts:greekLit:tlg0013.tlg009:/
%s/^"HH9\./"urn:cts:greekLit:tlg0013.tlg009:/
%s/^"HH\.9\./"urn:cts:greekLit:tlg0013.tlg009:/
%s/^"HHArtemis\.9\./"urn:cts:greekLit:tlg0013.tlg009:/

" Aphrodite (10)
%s/^"HH9Aphrodite\./"urn:cts:greekLit:tlg0013.tlg010:/
%s/^"HH10\./"urn:cts:greekLit:tlg0013.tlg010:/
%s/^"HH\.10\./"urn:cts:greekLit:tlg0013.tlg010:/
%s/^"HHAphrodite\.10\./"urn:cts:greekLit:tlg0013.tlg010:/

" Athena (11)
%s/^"HH11Athena\./"urn:cts:greekLit:tlg0013.tlg011:/
%s/^"HH11\./"urn:cts:greekLit:tlg0013.tlg011:/
%s/^"HH\.11\./"urn:cts:greekLit:tlg0013.tlg011:/
%s/^"HHAthena\.11\./"urn:cts:greekLit:tlg0013.tlg011:/

" Hera (12)
%s/^"HH12Hera\./"urn:cts:greekLit:tlg0013.tlg012:/
%s/^"HH12\./"urn:cts:greekLit:tlg0013.tlg012:/
%s/^"HH\.12\./"urn:cts:greekLit:tlg0013.tlg012:/
%s/^"HHHera\.12\./"urn:cts:greekLit:tlg0013.tlg012:/
%s/^"HHHera12\./"urn:cts:greekLit:tlg0013.tlg012:/
%s/^"HHHera\./"urn:cts:greekLit:tlg0013.tlg012:/

" Demeter (13)
%s/^"HH13Demeter\./"urn:cts:greekLit:tlg0013.tlg013:/
%s/^"HH13\./"urn:cts:greekLit:tlg0013.tlg013:/
%s/^"HH\.13\./"urn:cts:greekLit:tlg0013.tlg013:/
%s/^"HHDemeter\.13\./"urn:cts:greekLit:tlg0013.tlg013:/

" Gaia (14)
%s/^"HH14Gaia\./"urn:cts:greekLit:tlg0013.tlg014:/
%s/^"HH14\./"urn:cts:greekLit:tlg0013.tlg014:/
%s/^"HH\.14\./"urn:cts:greekLit:tlg0013.tlg014:/
%s/^"HHGaia\.14\./"urn:cts:greekLit:tlg0013.tlg014:/

" Heracles (15)
%s/^"HH15Heracles\./"urn:cts:greekLit:tlg0013.tlg015:/
%s/^"HH15\./"urn:cts:greekLit:tlg0013.tlg015:/
%s/^"HH\.15\./"urn:cts:greekLit:tlg0013.tlg015:/
%s/^"HHHeracles\.15\./"urn:cts:greekLit:tlg0013.tlg015:/

" Asclepius (16)
%s/^"HH16Asclepius\./"urn:cts:greekLit:tlg0013.tlg016:/
%s/^"HH16\./"urn:cts:greekLit:tlg0013.tlg016:/
%s/^"HH\.16\./"urn:cts:greekLit:tlg0013.tlg016:/
%s/^"HHAsclepius\.16\./"urn:cts:greekLit:tlg0013.tlg016:/

" the Dioscuroi (17)
%s/^"HH17Dioskouroi\./"urn:cts:greekLit:tlg0013.tlg017:/
%s/^"HH17\./"urn:cts:greekLit:tlg0013.tlg017:/
%s/^"HH\.17\./"urn:cts:greekLit:tlg0013.tlg017:/
%s/^"HHDioskouroi\.17\./"urn:cts:greekLit:tlg0013.tlg017:/

" Hermes (18)
%s/^"HH18Hermes\./"urn:cts:greekLit:tlg0013.tlg018:/
%s/^"HH18\./"urn:cts:greekLit:tlg0013.tlg018:/
%s/^"HH\.18\./"urn:cts:greekLit:tlg0013.tlg018:/
%s/^"HHHermes\.18\./"urn:cts:greekLit:tlg0013.tlg018:/

" Pan (19)
%s/^"HH19Pan\./"urn:cts:greekLit:tlg0013.tlg019:/
%s/^"HH19\./"urn:cts:greekLit:tlg0013.tlg019:/
%s/^"HH\.19\./"urn:cts:greekLit:tlg0013.tlg019:/
%s/^"HHPan\.19\./"urn:cts:greekLit:tlg0013.tlg019:/

" Hephaistos (20)
%s/^"HH20Hephaistos\./"urn:cts:greekLit:tlg0013.tlg020:/
%s/^"HH20\./"urn:cts:greekLit:tlg0013.tlg020:/
%s/^"HH\.20\./"urn:cts:greekLit:tlg0013.tlg020:/
%s/^"HHHephaistos\.20\./"urn:cts:greekLit:tlg0013.tlg020:/

" Apollo (21)
%s/^"HH21Apollo\./"urn:cts:greekLit:tlg0013.tlg021:/
%s/^"HH21\./"urn:cts:greekLit:tlg0013.tlg021:/
%s/^"HH\.21\./"urn:cts:greekLit:tlg0013.tlg021:/
%s/^"HHApollo\.21\./"urn:cts:greekLit:tlg0013.tlg021:/

" Poseidon (22)
%s/^"HH22Poseidon\./"urn:cts:greekLit:tlg0013.tlg022:/
%s/^"HH22\./"urn:cts:greekLit:tlg0013.tlg022:/
%s/^"HH\.22\./"urn:cts:greekLit:tlg0013.tlg022:/
%s/^"HHPoseidon\.22\./"urn:cts:greekLit:tlg0013.tlg022:/

" Zeus (23)
%s/^"HH23Zeus\./"urn:cts:greekLit:tlg0013.tlg023:/
%s/^"HH23\./"urn:cts:greekLit:tlg0013.tlg023:/
%s/^"HH\.23\./"urn:cts:greekLit:tlg0013.tlg023:/
%s/^"HHZeus\.23\./"urn:cts:greekLit:tlg0013.tlg023:/
%s/^"HHZeus\./"urn:cts:greekLit:tlg0013.tlg023:/

" Hestia (24)
%s/^"HH24Hestia\./"urn:cts:greekLit:tlg0013.tlg024:/
%s/^"HH24\./"urn:cts:greekLit:tlg0013.tlg024:/
%s/^"HH\.24\./"urn:cts:greekLit:tlg0013.tlg024:/
%s/^"HHHestia\.24\./"urn:cts:greekLit:tlg0013.tlg024:/

" Muses and Apollo (25)
" Special case - reference to the entire HH25
%s/^"HH25"/"urn:cts:greekLit:tlg0013.tlg025"/
%s/^"HH\.25"/"urn:cts:greekLit:tlg0013.tlg025"/
%s/^"HHMusesApollo\.25"/"urn:cts:greekLit:tlg0013.tlg025"/
%s/^"HH25MusesApollo"/"urn:cts:greekLit:tlg0013.tlg025"/

%s/^"HH25\./"urn:cts:greekLit:tlg0013.tlg025:/
%s/^"HH\.25\./"urn:cts:greekLit:tlg0013.tlg025:/
%s/^"HHMusesApollo\.25\./"urn:cts:greekLit:tlg0013.tlg025:/
%s/^"HH25MusesApollo\./"urn:cts:greekLit:tlg0013.tlg025:/

" Dionysus / Dione (26)
%s/^"HH26Dione\./"urn:cts:greekLit:tlg0013.tlg026:/
%s/^"HH26Dionysus\./"urn:cts:greekLit:tlg0013.tlg026:/
%s/^"HH26\./"urn:cts:greekLit:tlg0013.tlg026:/
%s/^"HH\.26\./"urn:cts:greekLit:tlg0013.tlg026:/
%s/^"HHDione\.26\./"urn:cts:greekLit:tlg0013.tlg026:/
%s/^"HHDionysus\.26\./"urn:cts:greekLit:tlg0013.tlg026:/

" Artemis (27)
%s/^"HH27Artemis\./"urn:cts:greekLit:tlg0013.tlg027:/
%s/^"HH27\./"urn:cts:greekLit:tlg0013.tlg027:/
%s/^"HH\.27\./"urn:cts:greekLit:tlg0013.tlg027:/
%s/^"HHArtemis\.27\./"urn:cts:greekLit:tlg0013.tlg027:/

" Athena (28)
%s/^"HH28Athena\./"urn:cts:greekLit:tlg0013.tlg028:/
%s/^"HH28\./"urn:cts:greekLit:tlg0013.tlg028:/
%s/^"HH\.28\./"urn:cts:greekLit:tlg0013.tlg028:/
%s/^"HHAthena\.28\./"urn:cts:greekLit:tlg0013.tlg028:/
" No numeric reference = 28
%s/^"HHAthena\./"urn:cts:greekLit:tlg0013.tlg028:/

" Hestia (29)
%s/^"HH29Hestia\./"urn:cts:greekLit:tlg0013.tlg029:/
%s/^"HH29\./"urn:cts:greekLit:tlg0013.tlg029:/
%s/^"HH\.29\./"urn:cts:greekLit:tlg0013.tlg029:/
%s/^"HHHestia\.29\./"urn:cts:greekLit:tlg0013.tlg029:/

" Gaia (30)
%s/^"HH30Gaia\./"urn:cts:greekLit:tlg0013.tlg030:/
%s/^"HH30\./"urn:cts:greekLit:tlg0013.tlg030:/
%s/^"HH\.30\./"urn:cts:greekLit:tlg0013.tlg030:/
%s/^"HHGaia\.30\./"urn:cts:greekLit:tlg0013.tlg030:/

" Helios (31)
%s/^"HH31Helios\./"urn:cts:greekLit:tlg0013.tlg031:/
%s/^"HH31\./"urn:cts:greekLit:tlg0013.tlg031:/
%s/^"HH\.31\./"urn:cts:greekLit:tlg0013.tlg031:/
%s/^"HHHelios\.31\./"urn:cts:greekLit:tlg0013.tlg031:/

" Selene (32)
%s/^"HH32Selene\./"urn:cts:greekLit:tlg0013.tlg032:/
%s/^"HH32\./"urn:cts:greekLit:tlg0013.tlg032:/
%s/^"HH\.32\./"urn:cts:greekLit:tlg0013.tlg032:/
%s/^"HHSelene\.32\./"urn:cts:greekLit:tlg0013.tlg032:/

" the Dioskouroi (33)
" Special case - reference to the entire HH33
%s/^"HH33Dioskouroi"/"urn:cts:greekLit:tlg0013.tlg033"/
%s/^"HH33"/"urn:cts:greekLit:tlg0013.tlg033"/
%s/^"HH\.33"/"urn:cts:greekLit:tlg0013.tlg033"/
%s/^"HHDioskouroi\.33"/"urn:cts:greekLit:tlg0013.tlg033"/

%s/^"HHDioskouroi\.33\./"urn:cts:greekLit:tlg0013.tlg033:/
%s/^"HH33\./"urn:cts:greekLit:tlg0013.tlg033:/
%s/^"HH\.33\./"urn:cts:greekLit:tlg0013.tlg033:/
%s/^"HH33Dioskouroi\./"urn:cts:greekLit:tlg0013.tlg033:/


" If no number is given, we have some defaults

" Demeter with no number = 2
%s/^"HHDemeter\./"urn:cts:greekLit:tlg0013.tlg002:/

" Apollo with no number = 3
%s/^"HHApollo\./"urn:cts:greekLit:tlg0013.tlg003:/

" Hermes with no number = 4
%s/^"HHHermes\./"urn:cts:greekLit:tlg0013.tlg004:/

" Aphrodite with no number = 5
%s/^"HHAphrodite\./"urn:cts:greekLit:tlg0013.tlg005:/

" Dionysus / Dione with no number = 7
%s/^"HHDione\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HHDionysus\./"urn:cts:greekLit:tlg0013.tlg007:/


" Never change below here
:wq
