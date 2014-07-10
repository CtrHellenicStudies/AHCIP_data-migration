/*

Convert data for Homer Commentary from streaming format to 
tabular format.

See further details at https://github.com/neelsmith/homcom

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

      // expand to catch various forms of reference
      // to Homeric Hymns ....



    } else {
      // format data for a commentary entry as CSV
      if (l != "") {
	// colon separates reference from commment:
	String csv = l.replaceFirst(/:[ ]+/, ',"')
	// semicolon separates classifcation of comment
	// from text of comment:
	csv = csv.replaceFirst(/;[ ]*/, '","')
	// close quotation marks at end of line:
	csv = csv.replaceFirst(/$/, '"')
	println "${currentPsg},${csv}"
      }
    }
  }
}


