# codebook-support
Facilitates use of the FF documentation (beta version here)

Dawn Koffman in the Office of Population Research at Princeton built some additional codebook support beyond the main Fragile Families documentation.

This is a beta version. The official source of documentation is still http://www.fragilefamilies.princeton.edu/documentation.

Files explained:

FFC_step5_reshape_withlabels.csv is a codebook csv that includes a row for each of the 12,943 variables that are being used in the FF Challenge.  This file shows variable name, description, type, positive value labels (including 0), and then negative value labels. 
 
ffcwordsearch.sh.txt is a very quick and dirty shell script that lets a linux or mac ios user enter a command like:
 
ffcwordsearch.sh.txt prison jail incarc “community service” probation parole violation charges convict release
 
and see the results that are stored in incarceration.csv.  All it does is run the grep command.  So someone could use it to search for “cm” constructed variables using:  ffcwordsearch.sh “^cm”
 
The rest of the files are for Stata users.  searchwords.do reads a csv file like searchwords.csv, merges it with the codebook csv (FFC_step5_reshape_withlabels.csv – first attachment), and produces a file like search_results.txt.
