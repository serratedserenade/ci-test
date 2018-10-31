#!/bin/bash
cd "$(dirname "$0")"

/bin/node hello.js --fruit orange &> /dev/null

if [ $? -ne 0 ]; then
  echo Test failed, success expected
  exit 1
fi

/bin/node hello.js &> /dev/null

if [ $? -eq 0 ]; then
  echo Test failed, failure expected
  exit 1
fi

exit 0