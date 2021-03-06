// -*- mode: Java; -*-

/*

Convert data for Homer Commentary from streaming format to tabular format.

See further details at https://github.com/CtrHellenicStudies/AHCIP_data-migration

Usage: groovy streamToTab.groovy <FILES>
 
*/


if (args.size() < 1) {
  System.err.println "Usage: groovy streamToTab.groovy <FILES>"
  System.exit(-1)
}


for (fName in args) {
  File f = new File(fName)
  
  String currentPsg = ""

  f.eachLine { l ->

    // Check for abbrevation of a new passage
    // being commented on:
	       
    // Iliad:
    // References look like I.#.###
    if (l ==~ /I\..+/) {
	currentPsg = l
	
    // Odyssey:
    // References look like O.#.###	
    } else if  (l ==~ /O\..+/) {
	currentPsg = l

    // Homeric Hymns:
    //  References look like HHApollo.### or HH24Hestia.### or HH6.### or just HH.##
    } else if (l ==~ /HH[A-Za-z0-9]*\..+/) {
	currentPsg = l

    // expand here if there are other passage abreviations
    // to be handled.

    } else {
	
	// To skip over introductory notes at the top of the file, don't
	// start processing output lines until we hit the first
	// valid passage line (rbj 2014-07-11)

	if ( currentPsg != "" ) {

	    if (! (l ==~ /^[ \t]*$/ ) ) {
		
		// convert line to a valid CSV commentary line

		// Need to surround the first token, the commentary source reference, with
		// double quotation marks:
		
		String csv = '"' + l
		
		// colon separates reference from commment:
		csv = csv.replaceFirst(/:[ ]+/, '","')
		
		// semicolon separates classification of comment from text of comment:
		csv = csv.replaceFirst(/;[ ]*/, '","')
		
		// close quotation marks at end of line:
		csv = csv.replaceFirst(/$/, '"')

		// prepend the passage abbreviation for the first column
		println "\"${currentPsg}\",${csv}"
	    }
	}
    }
  }
}



