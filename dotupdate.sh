#!/bin/bash

git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'
git submodule foreach git pull --recurse-submodules && git submodule foreach git submodule update --init --recursive

