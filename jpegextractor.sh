#!/bin/sh

if [ "$1" = "" ] ; then
    echo "Usage: jpegextractor.sh <path_to_directory>"
    exit 1
fi

cd $1

for i in *.NEF ; do exiftool -b -JpgFromRaw $i > `basename $i .NEF`.JPG ; done

for i in *.NEF ; do exiftool -q -overwrite_original_in_place -TagsFromFile $i `basename $i .NEF`.JPG ; done
