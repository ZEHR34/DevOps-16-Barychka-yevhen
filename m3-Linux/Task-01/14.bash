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

# 19-20-21
mkdir test
echo 123 > test/1
ln -s ../test/1 test/2
ln test/1 test/3
cp -rLp test testL
rm -r test testL

# 22
for i in `find ! -name . -prune -type l`; do
  ln -sf "$(readlink -f "$i")" "$i"
done

#23
find . -type l | while read l; do
    target="$(realpath "$l")"
    ln -fs "$(realpath --relative-to="$(dirname "$(realpath -s "$l")")" "$target")" "$l"
done
