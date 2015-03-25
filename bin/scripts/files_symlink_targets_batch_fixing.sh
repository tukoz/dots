#!/bin/bash
#
# Batch-fixing symlink targets == retarget (broken) symbolink links 
# 1) Any case: http://www.linuxquestions.org/questions/blog/the-dsc-472367/batch-fixing-symlink-targets-3128/
# 2) Just add a prefix to the path: https://unix.stackexchange.com/questions/18360/how-can-i-relink-a-lot-of-broken-symlinks
# 3) Variable expansion + substitution:   https://unix.stackexchange.com/questions/184038/how-to-use-variables-properly-in-this-little-script
# autre commande http://superuser.com/questions/157743/batch-update-symbolic-links-recursively

# 1)
# find /PATH-where-the-null-symlinks are/ -type l | while read nullsymlink ;
  # do wrongpath=$(readlink "$nullsymlink") ;
  # right=$(echo "$wrongpath" | sed s'|/old-wrong/path|/correct-new/path|') ;
    ## Variables are not EXPANDED in single quotes, but they are in double quotes:
    #right=$(echo "$wrongpath" | sed "s|$oldtargetdir|$goodtargetdir|") ;
    ## Moreover, you don't need sed for such a simple SUBSTITUTION as you can replace substrings within bash using PARAMETER EXPANSION:
    #right=${wrongpath/$oldtargetdir/$goodtargetdir}
  # ln -fs "$right" "$nullsymlink" ; 
# done

# 2) Have a better control on retargeted links (but how to insert it into the script?)
# lname       : find symlinks
# readlink    : read symlink's content
# symlinks -c <PATH> : convert all absolute links under the specified directory to relative symlinks unless they cross a filesystem boundary.
# script:
# find <PATH> -lname '<OLD-PATH>/*' \
#   -exec sh -c 'ln -snf "$0" "/mnt$(readlink "$0")"' {} \;

## Interactive
echo -n "Enter the source directory (with trailing '/') where symlinks path should be retargeted > "
  read response1
  if [ -n "$response1" ]; then
    symlinksdirectory=$response1
fi

if [ -d $symlinksdirectory ]; then
  echo -n "Okay, $symlinksdirectory exists. Now enter 1) the OLD-WRONG symlinks target directory > "
  read response2
  if [ -n "$response2" ]; then
    oldtargetdir=$response2
  fi

  echo -n "And 2) enter the CORRECT target directory for symlinks > "
  read response3
  if [ -n "$response3" ]; then
    goodtargetdir=$response3
  fi

  echo -n "Now parsing symlinks in $symlinksdirectory to retarget them from $oldtargetdir to $goodtargetdir > "
  find $symlinksdirectory -type l | while read nullsymlink ;
    do wrongpath=$(readlink "$nullsymlink") ;
    right=${wrongpath/$oldtargetdir/$goodtargetdir}
    ln -fs "$right" "$nullsymlink" ;
  done
fi

## Non interactive
#find /mnt/docs/tofs/2010/ -type l | while read nullsymlink ;
#do wrongpath=$(readlink "$nullsymlink") ;
#right=$(echo "$wrongpath" | sed s'|/media/hitachi8video/mes_videos/2010|/mnt/mm/videos/mesvideos/2010|') ;
#ln -fs "$right" "$nullsymlink" ; done

# Notes
