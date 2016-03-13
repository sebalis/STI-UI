#!/usr/bin/env sh

echo "Path for 'bundle':"
which bundle
BUNDLE=$?

echo "Path for 'middleman':"
which middleman
MIDDLEMAN=$?

if [ $BUNDLE -eq 0 ] && [ $MIDDLEMAN -eq 0 ]; then
  echo "Building templates pre-commit."
  bundle exec middleman build
  git add ./build
else
  echo "Not able to build templates pre-commit but committing anyway."
fi