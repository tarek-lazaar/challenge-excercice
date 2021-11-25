#!/bin/bash
echo "added a line!!"

var1=$(< input.txt)

# then for example:
((var1=var1+1))

echo $var1 > input.txt