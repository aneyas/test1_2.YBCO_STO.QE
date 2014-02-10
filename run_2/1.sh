#!/bin/bash - 
#===============================================================================
#
#          FILE:  1.sh
# 
#         USAGE:  ./1.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: YOUR NAME (), 
#       COMPANY: 
#       CREATED: 12/04/2013 07:18:04 PM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

grep -e 'l e' -e ' scf ' $1 | awk '/l e/{e=$(NF-1)}/ scf /{print e, $(NF-1)}'

