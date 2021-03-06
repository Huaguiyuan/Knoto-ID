#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src/polynomial_invariant --planar --input-format=gauss --nb-moves-III=100000 --output=polynomial_invariant_164.txt "${sourcepath}"/input/input_diagram_gauss_open_plane_0.txt || exit $? 
diff polynomial_invariant_164.txt "${sourcepath}"/output/polynomial_invariant_164.txt || exit $?
