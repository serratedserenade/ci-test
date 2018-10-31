#!/bin/bash
cd "$(dirname "$0")"

node hello.js

if [ $? -eq 0 ]; then
  echo Test failed, failure expected
  exit 1
fi

exit 0