#!/bin/bash

for i in *.MP4; do avconv -i "$i" -vcodec copy -ac 2 -strict experimental "out-$i"; done
