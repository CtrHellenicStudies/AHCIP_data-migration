#homcom#

Converting source data for CHS Homer Commentary from streaming format to tabular format. 



## Contents of this repository ##

- `src`: plain text files in "streaming format" documented below
- `csv`: conversion of plain-text files to tabular `csv` format
- `cite`: conversion of simple `csv` files to citable collection. Inconsistently formatted referecnes to texts are converted to CTS URNs, and each individual comment is assigned a unique URN value in the `urn:cts:dmk` namespace.
- `regexen`: text files with Ryan Baumann's notes on regular expressions he used to convert the varied forms of notation he found in the source files into URNs.
- `scripts`:  a script in groovy that converts plain-text source files in streaming format to simple `csv` format for commentary on references to the *Iliad* or *Odyssey*
- `test`:  test input and output data for groovy script

## Input: streaming format ##

Plain-text input files are formatted as follows:

Annotations on a given passage of the *Iliad* begin with a reference to the *Iliad* passage on a single line.  Lines beginning with the string `I.` are assumed to be *Iliad* references.

Single comments are then given by a source reference and a comment, separated by a colon.  It is assumed that comments may contain any character except a quotation mark.  Comments begin with a classifying note separated from the rest of the comment by a semicolon.



