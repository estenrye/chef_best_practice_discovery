#!/bin/bash
set -e

inspec vendor $@ --overwrite --chef-license=accept 
inspec check $@ --chef-license=accept