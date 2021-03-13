#!/bin/bash

for f in * ; do
  PAK=$(head -1 $f)
  if [[ $PAK =~ npm ]]; then
    CMD="${PAK:3}"
    echo $CMD
    eval $CMD
  fi
done
