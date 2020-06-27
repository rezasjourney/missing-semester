#! /bin/sh

echo "Running $0"
echo "You passed $# arguments"

for file in $@; do
    grep foobar $file > /dev/null 2> /dev/null 
    if [ $? -ne 0 ]; then
        echo "File $file has no foobar"
        echo "# foobar" >> $file
    fi
done