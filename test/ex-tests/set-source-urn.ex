## Transformation of Primary Source to CTS URNs

# Iliad
%s/^"I\./"urn:cts:greekLit:tlg0012.tlg001:/

# Odyssey
%s/^"O\./"urn:cts:greekLit:tlg0012.tlg002:/

# Homeric Hymns

# Demeter (2)
%s/^"HH[0-9]\{-}Demeter\./"urn:cts:greekLit:tlg0013.tlg002:/

# Apollo (3)
%s/^"HH[0-9]\{-}Apollo\./"urn:cts:greekLit:tlg0013.tlg003:/

# Hermes (4)
%s/^"HH[0-9]\{-}Hermes\./"urn:cts:greekLit:tlg0013.tlg004:/

# Aphrodite (5)
%s/^"HH[0-9]\{-}Aphrodite\./"urn:cts:greekLit:tlg0013.tlg005:/

# Dionysius / Dione (7)
%s/^"HH[0-9]\{-}Dione\./"urn:cts:greekLit:tlg0013.tlg007:/
%s/^"HH[0-9]\{-}Dionysus[0-9]{-}\./"urn:cts:greekLit:tlg0013.tlg007:/

# Hestia (24)
%s/^"HH[0-9]\{-}Hestia\./"urn:cts:greekLit:tlg0013.tlg024:/

# Athena (28)
%s/^"HH[0-9]\{-}Athena\./"urn:cts:greekLit:tlg0013.tlg028:/

# Numbered, not named

%s/^"HH\.*6\./"urn:cts:greekLit:tlg0013.tlg006:/

%s/^"HH\.*9\./"urn:cts:greekLit:tlg0013.tlg009:/

%s/^"HH\.*10\./"urn:cts:greekLit:tlg0013.tlg010:/

%s/^"HH\.*17\./"urn:cts:greekLit:tlg0013.tlg017:/

%s/^"HH\.*18\./"urn:cts:greekLit:tlg0013.tlg018:/

%s/^"HH\.*21\./"urn:cts:greekLit:tlg0013.tlg021:/

%s/^"HH\.*26\./"urn:cts:greekLit:tlg0013.tlg026:/

%s/^"HH\.*31\./"urn:cts:greekLit:tlg0013.tlg031:/

%s/^"HH\.*32\./"urn:cts:greekLit:tlg0013.tlg032:/

# Special case - one reference to the entire HH33
%s/^"HH\.33"/"urn:cts:greekLit:tlg0013.tlg033"/
%s/^"HH\.*33\./"urn:cts:greekLit:tlg0013.tlg033:/

# Never change below here
wq
