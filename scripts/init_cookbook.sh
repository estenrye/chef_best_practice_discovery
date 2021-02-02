#!/bin/bash
set -e

DIR="`dirname \"$0\"`"

cd "${DIR}/../cookbooks" && \
  chef generate cookbook $@
