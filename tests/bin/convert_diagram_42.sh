#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=0.889941,-0.375251,-0.259214 --closure-method=open --output=convert_diagram_42.txt "${sourcepath}"/input/input2.xyz || exit $? 
diff convert_diagram_42.txt "${sourcepath}"/output/convert_diagram_42.txt || exit $?
