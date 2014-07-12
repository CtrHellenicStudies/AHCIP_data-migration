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

    if (l ==~ /I\..+/) {
      // Iliad:
      currentPsg = l

    } else if  (l ==~ /O\..+/) {
      // Odyssey:
      currentPsg = l

      // Homeric Hymns:
    } else if (l ==~ /HH[A-Za-z0-9]+\..+/) {
	currentPsg = l

	// expand here if there are other passage abreviations
	// to be handled.

    } else {
	
	// To skip over introductory notes at the top of the file, don't
	// start processing output lines until we hit the first
	// valid passage line (rbj 2014-07-11)

	if ( currentPsg != "" ) {

	    if (l != "") {
		// convert line to a CSV commentary line
		
		// colon separates reference from commment:
		String csv = l.replaceFirst(/:[ ]+/, ',"')
		
		// semicolon separates classification of comment
		// from text of comment:
		csv = csv.replaceFirst(/;[ ]*/, '","')
		
		// close quotation marks at end of line:
		csv = csv.replaceFirst(/$/, '"')

		// prepend the passage abbreviation for the first column
		println "${currentPsg},${csv}"
	    }
	}
    }
  }
}



