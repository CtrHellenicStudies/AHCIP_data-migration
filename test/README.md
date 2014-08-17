** Tests **

    This directory comprises tests of each component of the
    MRBTP (Modified Ryan Baumann Transformation Process)

*** File Index ***

groovy-script-tests	- Test the groovy script against each
			  input files. Outputs CSV lines into
                          work/phase1/${srcfile}_phase1.csv
                          
mrbtp-tests/		- Test the MRTB script against each phase1
                          file in work/phase1. Outputs CSV lines
			  into work/phase2/${srcfile}_phase2.csv

neel-tests/		- Neel's test data files

work/			- Working directory with output files ... not
                          kept in git			  
