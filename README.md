#homcom#


Script to convert source data for CHS Homer Commentary from streaming format to tabular format. 


## Input: streaming format ##

Annotations on a given passage of the *Iliad* begin with a reference to the *Iliad* passage on a single line.  Lines beginning with the string `I.` are assumed to be *Iliad* references.

Single comments are then given by a source reference and a comment, separated by a colon.  It is assumed that comments may contain any character except a quotation mark.


## Output: csv format ##

Comments are written to standard output in `.csv` format with the comment 



