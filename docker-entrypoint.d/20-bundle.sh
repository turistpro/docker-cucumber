#!/bin/sh

if [ -f /app-tests/Gemfile ]; then
  echo "bundle install packages"
  cd /app-tests \
  && bundle install
fi
