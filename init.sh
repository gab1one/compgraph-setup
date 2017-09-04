#!/bin/bash

# checkout the correct branch in each repository
# thanks https://stackoverflow.com/a/18799234
git submodule foreach -q --recursive \
  'git checkout \
  $(git config -f $toplevel/.gitmodules submodule.$name.branch || echo master)'
