#!/bin/bash
set -e

DIR="`dirname \"$0\"`"

cd "${DIR}/../policies" && \
  chef generate cookbook $@
