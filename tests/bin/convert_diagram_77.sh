#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=xyz --output-format=pd --projection=-0.730477,-0.202257,-0.652301 --closure-method=open --output=convert_diagram_77.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff convert_diagram_77.txt "${sourcepath}"/output/convert_diagram_77.txt || exit $?
