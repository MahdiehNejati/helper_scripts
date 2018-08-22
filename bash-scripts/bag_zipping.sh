#!/bin/bash
clear
for i in *.bag
do 
tar -zcvf "$i.tar.gz" "$i"
done

mkdir zipped 
move *.gz zipped 

tar -zcvf zipped.tar.gz zipped

echo "Zipped bag files" | mutt -s "Zipped bag files" -a zipped.tar.gz -- mahdieh.javaremi@northwestern.edu

rm -r zipped
rm -r zipped.tar.gz