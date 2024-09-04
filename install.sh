#!/bin/bash

while IFS= read -r line
do
    rm -rf temp
    IFS=, read -r url name <<< "$line"
    git clone "$url" temp
    mkdir -p "$name"
    cp -r temp/* "$name/"
    rm -rf temp
done < "repos.info" 

