#!/bin/bash

for f in $(ls); do

cd ${f}

updpkgsums

echo "update [$f]"

cd ../

done
