#!/bin/bash
set -e

DIR="`dirname \"$0\"`"

cookstyle $@ -c "${DIR}/../.rubocop.yml"
inspec vendor $@ --overwrite --chef-license=accept
inspec check $@ --chef-license=accept