#!/bin/bash

THIS_FILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null 2>&1 && pwd)"

pants generate-lockfiles
"$THIS_FILE_DIR"/pants-export-python-environment.sh
