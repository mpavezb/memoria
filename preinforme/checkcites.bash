#!/bin/bash
#
# Run me to show a list of unused references from your bib files.
#
# $ cd <this/dir>
# $ ./checkcites.bash
#
#

touch IEEEabrv.bib
checkcites --unused main.aux
rm IEEEabrv.bib
