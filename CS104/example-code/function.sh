#!/bin/bash

#number of arguments is not equal to zero, go ahead further down
#|| is or operator, if left fails, execute the right side

function bar {
  [[ $# -ne 0 ]] || { 
     echo "*** bar: must have at least 1 arg." 
     return 1
  }
  echo "$@"
  # "return 0" is implicit
}

echo "calling bar with no arguments, it should fail"
if bar; then
  echo success: $?
else
  echo failure: $?
fi
#introducing an extra line via echo
echo

echo 'calling bar: bar  arg1 arg2 arg3'
if bar arg1 arg2 arg3; then
  echo success: $?
else
  echo failure: $?
fi


