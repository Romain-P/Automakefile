#!/bin/sh
## skip-synthesis.sh for  in /home/romain.pillot/projects/ADM_automakefile_2016
## 
## Made by romain pillot
## Login   <romain.pillot@epitech.net>
## 
## Started on  Mon Jun 26 07:07:59 2017 romain pillot
## Last update Mon Jun 26 07:39:33 2017 romain pillot
##

if [ $# -ne 1 ]
then
    printf $0': %s\n' "invalid argument."
else
    awk '{print $3, "\t", $9}' | grep $1
fi
