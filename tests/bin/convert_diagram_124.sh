#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=pd --projection=-0.117981,0.844126,0.523003 --closure-method=open --output=convert_diagram_124.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff convert_diagram_124.txt "${sourcepath}"/output/convert_diagram_124.txt || exit $?
