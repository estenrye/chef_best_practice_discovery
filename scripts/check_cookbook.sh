#!/bin/bash
set -e

DIR="`dirname \"$0\"`"

cookstyle $@ -c "${DIR}/../.rubocop.yml"
cd $@ && kitchen test
