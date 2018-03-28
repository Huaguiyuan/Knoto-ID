#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src/polynomial_invariant --projection=-0.0213265,-0.999528,0.0221053 --input-format=xyz --closure-method=direct --nb-moves-III=100000 --output=polynomial_invariant_6.txt "${sourcepath}"/input/input3.xyz || exit $? 
diff polynomial_invariant_6.txt "${sourcepath}"/output/polynomial_invariant_6.txt || exit $?
