#!/bin/bash

for i in `ls Formula/*.rb`; do
  echo "  Copying ${i} into Formulas directory."
  cp -f ${i} /usr/local/Library/Formula/
done
echo 'Done.'