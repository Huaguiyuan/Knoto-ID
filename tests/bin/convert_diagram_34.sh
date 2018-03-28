#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=0.471543,0.590065,-0.65534 --closure-method=direct --output=convert_diagram_34.txt "${sourcepath}"/input/input2.xyz || exit $? 
diff convert_diagram_34.txt "${sourcepath}"/output/convert_diagram_34.txt || exit $?
