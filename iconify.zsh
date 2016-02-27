#!/bin/zsh

iconify () {
        filepath=$1
        directory_name=`dirname ${filepath}`
        filename=`basename ${filepath}`
        filename_without_extension=${filename%.*}
        extname=${filename##*.}
        newfilename=${directory_name}/${filename_without_extension}-128x128.${extname}
        convert -resize 128x128 $1 ${newfilename}
}
