** Tests **

    This directory comprises tests of each component of the
    MRBTP (Modified Ryan Baumann Transformation Process)

*** File Index ***

compare			- Diff all the files from work/phase1 and
                          work/phase2

groovy-script-tests	- Test the groovy script against each
			  input files. Outputs CSV lines into
                          work/phase1/${srcfile}
                          
test-mrbtp/		- Test the MRTB script against each phase1
                          file in work/phase1. Outputs CSV lines
			  into work/phase2/${srcfile}

neel-tests/		- Neel's test data files

work/			- Working directory with output files ... not
                          kept in git			  
