#!/bin/bash

declare -a apps=("one", "two", "three")

while read app; do
  echo "app"
done < "${apps[@]}"