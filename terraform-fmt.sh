#!/bin/sh

for file in "$@"; do
  terraform fmt `dirname $file`
done
