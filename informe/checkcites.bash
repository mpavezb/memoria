#!/bin/bash
#
# Run me to show a list of unused references from your bib files.
#
# $ cd <this/dir>
# $ ./checkcites.bash
#
#

if [ ! -f main.aux ]; then
	echo "Required file main.aux does not exists. Please compile the project."
	exit 1
fi

touch IEEEabrv.bib
checkcites --unused main.aux
rm IEEEabrv.bib
