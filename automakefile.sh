#!/bin/sh
## automakefile for  in /home/romain.pillot/projects/ADM_automakefile_2016
## 
## Made by romain pillot
## Login   <romain.pillot@epitech.net>
## 
## Started on  Mon Jun 26 07:43:34 2017 romain pillot
## Last update Mon Jun 26 12:02:14 2017 romain pillot
##

script=$0

if [ $# != 1 ]
then
    printf '%s: %s\n' $0, "invalid argument."
    exit 84
else
    config=$1
fi

# Get a value from the config
function get_value()
{
    local key="${1};"
    local necessary=$2
    local key_length=$((${#key} + 1))
    value=$(cat $config | grep ^$key | cut -c$key_length-)
    if [ -z "$value" ] && [ $necessary == true ]
    then
	printf '%s: cannot find key %s\n' $script $key
	exit 84
    fi
}

#Create Makefile file
get_value "PROJECT_DIR" true
makefile="${value}/Makefile"
rm -rf $makefile

# Write a variable
function write_variable()
{
    get_value $1 $2
    echo -e "${1}\t=\t${value}\n" >> $makefile
}

#Write compiler line
write_variable "CC" true

#Write program name
write_variable "EXEC" true

#Write removing macro
echo -e "RM\t=\trm -f" >> $makefile

#write source files
get_value "SOURCES_DIR" true
while IFS='' read -r line || [[ -n "$line" ]]
do
    echo "Text read from file: $line"
done < "$1"
