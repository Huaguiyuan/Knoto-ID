#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=0.0424496,0.764321,-0.643438 --closure-method=open --output=convert_diagram_94.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff convert_diagram_94.txt "${sourcepath}"/output/convert_diagram_94.txt || exit $?
