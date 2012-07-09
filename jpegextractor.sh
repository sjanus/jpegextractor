#!/bin/bash

for i in *.NEF ; do exiftool -b -JpgFromRaw $i > `basename $i .NEF`.JPG ; done

for i in *.NEF ; do exiftool -q -overwrite_original_in_place -TagsFromFile $i `basename $i .NEF`.JPG ; done
