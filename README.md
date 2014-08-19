#AHCIP_data-migration#

**Summary**:  Converting source data for CHS "A Homer Commentary in
  Progress" (AHCIP) from streaming format to tabular format suitable
  for use in a CITE Collection.

  Source data (in the "streaming format" documented below) is first
  flattened to a simple `csv` file.  The simple `csv` file is then
  expanded with a citable URN for each comment, and modified by
  reformatting references to passages commented on as CTS URNs.

  The CSV files will be imported into the AHCIP editing system.
  
## Contents of this repository ##

- `src_docx` : Microsoft Word files -- these were created by research
    assistants (Anita, Ian, etc.) in the "Streaming Format" documented
    below.
    
- `src_txt`: Plain text files in "Streaming Format" documented below,
    converted from the Microsoft Word files in src_docx.

- `csv`: CSV files converted from the plain text files in
    src_txt. These files are generated using the Groovy script in
    scripts/streamToTab.groovy.

- `cite`: CSV files with references made citable from the CSV files in
    csv. Inconsistently formatted references to texts are converted to
    CTS URNs, and each individual comment is assigned a unique URN
    value in the `urn:cts:ahcip` namespace. These files were generated
    using the script in mrbtp (ex regular expressions).

- `regexen`: Text files with Ryan Baumann's notes on regular
    expressions he used to convert the varied forms of notation he
    found in the source files into CTS URNs.
  
- `scripts`: A script in Groovy that converts plain-text source files
    in streaming format to simple `csv` format for commentary on
    references to the *Iliad*,  *Odyssey* or *Homeric Hymns*.

- `mrbtp`: \[Modified Ryan Baumann Transform Process\] A Bash script
    with a set of ex files, automating Ryan's process.

- `test`: Various test scripts to verify the correctness of scripts
    and tools.

- `documentation`: Documentation of the input to the AHCIP editing
    system.    
  
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
    is in the file documentation/ingest_data_format.docx




