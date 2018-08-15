# DESCRIPTION

## Introduction

Very simple script that extracts JPEG embedded in NEF files. It is based on `exiftool`.

Original concept - Greg Troxel (http://www.mail-archive.com/geeqie-devel@lists.sourceforge.net/msg00255.html).

## Running in container

If you do not want to install `perl`, `exiftool` and others, but you just want to extract some JPEGs from NAFs, use Docker!

### Building

In cloned repository execute:

    docker build -t jpegextractor .

### Container usage

In directory with your NEF files execute:

    docker run --rm -v `pwd`:/work jpegextractor jpegextractor.sh /work

If you current directory path contains spaces, execute:

    docker run --rm -v "`pwd`":/work jpegextractor jpegextractor.sh /work

Enjoy!


