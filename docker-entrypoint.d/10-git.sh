#!/bin/sh

# Git clone
GIT_URL=${GIT_URL:-}
if [ ! -z ${GIT_URL} ]; then
   rm -rf /app-tests/*
   echo "Start clone $GIT_URL..."
   git clone ${GIT_URL} /app-tests
   GIT_TAG=${GIT_TAG:-}
   if [ ! -z ${GIT_TAG} ]; then
      cd /app-tests
      echo "Checkout tag $GIT_TAG"
      git checkout ${GIT_TAG}
   fi
fi

