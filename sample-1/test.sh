#!/bin/bash
set -euCo pipefail
cd "$(dirname "$0")"

source ./another.sh

another_func
