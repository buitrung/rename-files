#!/bin/bash

manga="Chainsaw Man"
prefix="[Kingdom Italia] "

path="/home/buitrung/Documents/mangadex-downloader/"
cd "${path}${manga}"

count=0

for file in *.*
do
  # ext="${file##*.}"

  if [[ "${file}" == "${prefix}"* ]]; then
    chapter="${file#"${prefix}"}"

    mv "${file}" "${manga} - ${chapter}"

    ((count++))
  fi
done

echo "Found ${count} files"
