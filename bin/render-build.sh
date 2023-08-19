#!/usr/bin/env bash
# exit on error
# set -o errexit

bundle install
bundle rake assets:precompile
bundle rake assets:clean
bundle rake db:migrate