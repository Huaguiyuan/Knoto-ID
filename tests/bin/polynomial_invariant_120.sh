#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src/polynomial_invariant --planar --projection=-0.603074,0.473638,0.641848 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_120.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff polynomial_invariant_120.txt "${sourcepath}"/output/polynomial_invariant_120.txt || exit $?
