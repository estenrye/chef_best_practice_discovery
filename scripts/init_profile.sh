#!/bin/bash
set -e

DIR="`dirname \"$0\"`"

cd "${DIR}/../inspec_profiles" && \
  inspec init profile $@
