#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=pd --output-format=pd --output=convert_diagram_188.txt "${sourcepath}"/input/input_diagram_closed_1.txt || exit $? 
diff convert_diagram_188.txt "${sourcepath}"/output/convert_diagram_188.txt || exit $?
