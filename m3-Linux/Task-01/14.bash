#!/bin/bash

# 14
cat /sys/class/net/*/address

# 15
users

# 16
netstat -t

# 17
echo 123 > test.txt
echo qwerty > test2.txt
ln -s test.txt testlink.txt
ln -sfn test2.txt testlink.txt
rm test.txt test2.txt testlink.txt

# 18
mkdir "testf"
pathf="./testf"
echo 1234 > testf/1.txt
echo qwer > testf/2.txt
mkdir "testlfInks"
for i in `ls $pathf`
do
  ln -s ../$pathf/$i testlfInks/$i
done
rm -r testlfInks testf -r
