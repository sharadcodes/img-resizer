#!/bin/sh -l

# FOR PNG

OIFS="$IFS"
IFS=$'\n'
for IN in `find $1 -iname "*.png" -o -iname "*.png"`
do
OUT=${IN/$1/$3}
DIR=$(dirname $OUT)
mkdir -p "$DIR"
if [ ! -f $OUT ]; then
echo "Converting $IN"
convert $IN -resize $2  $OUT
else
echo "Converted already."
fi

done
IFS="$OIFS"

# FOR JPEG

OIFS="$IFS"
IFS=$'\n'
for IN in `find $1 -iname "*.jpeg*" -o -iname "*.jpeg"`
do
OUT=${IN/$1/$3}
DIR=$(dirname $OUT)
mkdir -p "$DIR"
if [ ! -f $OUT ]; then
echo "Converting $IN"
convert $IN -resize $2  $OUT
else
echo "Converted already."
fi

done
IFS="$OIFS"

# FOR JPG

OIFS="$IFS"
IFS=$'\n'
for IN in `find $1 -iname "*.jpg*" -o -iname "*.jpg"`
do
OUT=${IN/$1/$3}
DIR=$(dirname $OUT)
mkdir -p "$DIR"
if [ ! -f $OUT ]; then
echo "Converting $IN"
convert $IN -resize $2  $OUT
else
echo "Converted already."
fi

done
IFS="$OIFS"
