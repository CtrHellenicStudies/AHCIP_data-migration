#AHCIP_data-migration#

**Summary**:  Converting source data for CHS "A Homer Commentary in Progress" (AHCIP) from streaming format to tabular format suitable for use in a CITE Collection. 

Source data (in the "streaming format" documented below) is first
flattened to a simple `csv` file.  The simple `csv` file is then
expanded with a citable URN for each comment, and modified by
reformatting references to passages commented on as CTS URNs.


## Contents of this repository ##

- `src`: plain text files in "streaming format" documented below

- `csv`: conversion of plain-text files to tabular `csv` format. These
  files are generated using scripts/streamToTab.groovy

- `cite`: conversion of simple `csv` files to citable
  collection. Inconsistently formatted references to texts are
  converted to CTS URNs, and each individual comment is assigned a
  unique URN value in the `urn:cts:dmk` namespace.  These files were
  generated using ex/vim with a set of regular expressions

- `regexen`: text files with Ryan Baumann's notes on regular
  expressions he used to convert the varied forms of notation he found
  in the source files into CTS URNs.
  
- `scripts`:  a script in groovy that converts plain-text source files
  in streaming format to simple `csv` format for commentary on
  references to the *Iliad*,  *Odyssey* or *Homeric Hymns*.

- `test`: Various tests scripts to verify the correctness of scripts
  and tools

  
## Input: streaming format ##

Plain-text input files are formatted as follows:

    Annotations on a given passage of the *Iliad* begin with a
    reference the *Iliad* passage on a single line.  Lines beginning with
    the  string `I.` are assumed to be *Iliad* references;  lines
    beginning with the string `O.` are assumed to be *Odyssey*
    references.  The  file `regexen/hhcts.txt` contains a complete list
    of the different  forms of reference Ryan Baumann found for
    commentary on Homeric  Hymns. 

Following the identification of a passage, one or more entries are
then given on a single line each.  Each entry consists of a source
reference and a comment, separated by a colon.  It is assumed that
comments may contain any character except a quotation mark.  Comments
begin with a classifying note separated from the rest of the comment
by a semicolon.

## Output: CSV format ##

A full description of the output files, for ingest into the AHCIP database,
is in the file doc/ingest_data_format.docx




