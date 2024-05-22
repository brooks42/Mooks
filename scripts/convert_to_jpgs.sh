#!/bin/bash
for image in *;
do 
    if [[ -f $image ]]; then
        convert "$image" -quality 30 JPEG:"jpegs/${image%.*}.jpeg"
    fi
done