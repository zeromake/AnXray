#!/bin/bash

tag=`cat sager.properties | grep VERSION_NAME | cut -d "=" -f 2`

echo $tag

for f in `find ./app/build/outputs/apk/ -type f -name "*.apk"`; do
    ff=`echo $f | sed -e "s|-$tag||"`
    mv $f $ff
done
