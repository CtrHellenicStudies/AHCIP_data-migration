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
    if (l ==~ /I\..+/) {
      currentPsg = l
    } else {
      if (l != "") {
	String csv = l.replaceFirst(/:[ ]+/, ',"')
	csv = csv.replaceFirst(/$/, '"')
	println "${currentPsg},${csv}"
      }
    }
  }
}


