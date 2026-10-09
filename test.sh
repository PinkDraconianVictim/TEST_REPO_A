#!/bin/bash
set -euo pipefail

{
  echo "PRIVATE_SUBMODULE_CANARY:"
  if [ -f "owned-private-submodule/test" ]; then
    cat owned-private-submodule/test
  else
    echo "Submodule not present or inaccessible"
  fi
} | tee test-results.txt
