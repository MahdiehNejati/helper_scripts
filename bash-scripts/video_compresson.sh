#!/bin/bash

# # Script to loop through .mp4 files in a folder and compress them
# # Run this before transferring videos to data storage
# # Written by Mahdieh Nejati
# # October 2017

# # To run 
# # ./video_compression.sh PATH_TO_VIDEO_FOLDER

# # avconv -i <original video>.mp4 -vcodec libx264 -acodec libmp3lame -crf 24 <compressed video>.mp4

# # loop & print a folder recusively,
# print_folder_recurse() {
# 	dirname=compressed
#     for fn in "$1"/*;do
#         if [ -d "$fn" ];then
#             echo "dir: $fn"
#             print_folder_recurse "$fn"
#         elif [ -f "$fn" ]; then
#             echo "file: $fn"
#             if [ ! -d "$dirname" ]; then 
#             	echo "Creating folder to store compressed files."
#             	mkdir ./$dirname
#             	echo "Folder called compressed created."
#             fi
#             if [ ${fn: -4} == ".MP4" ];then
#             	avconv -i $(basename $fn) -vcodec libx264 -acodec libmp3lame -crf 24 $(basename $fn) -y
#             fi
#         fi
#     done
# }


# # try get path from param
# path=""
# if [ -d "$1" ]; then
#     path=$1;
# else
#     path="."
# fi

# echo "base path: $path"
# print_folder_recurse $path



for i in *.MP4; do avconv -i "$i" -vcodec copy -ac 2 -strict experimental "out-$i"; done


# For extracting all zips: 
# for i in *.zip; do unzip "$i" -d "$i_extract"; done