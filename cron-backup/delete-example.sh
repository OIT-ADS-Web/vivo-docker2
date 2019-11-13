#!/bin/sh

#cd <%= deploy_path %>/shared/log

#del=$(date --date="30 days ago" +%Y%m%d)

# example:
#https://stackoverflow.com/questions/13489398/delete-files-older-than-10-days-using-shell-script-in-unix

find ./usr/local/VIVO/home/config/archives -mtime +10 -type f -delete


#usr/local/VIVO/home/config/dumps

#path="/data/backuplog/"
#timestamp=$(date +%Y%m%d_%H%M%S)    
#filename=log_$timestamp.txt    
#log=$path$filename
#days=7

#START_TIME=$(date +%s)

#find $path -maxdepth 1 -name "*.txt"  -type f -mtime +$days  -print -delete >> $log

#echo "Backup:: Script Start -- $(date +%Y%m%d_%H%M)" >> $log


######... code for backup ...or any other operation .... >> $log


#END_TIME=$(date +%s)

#ELAPSED_TIME=$(( $END_TIME - $START_TIME ))


#echo "Backup :: Script End -- $(date +%Y%m%d_%H%M)" >> $log
#echo "Elapsed Time ::  $(date -d 00:00:$ELAPSED_TIME +%Hh:%Mm:%Ss) "  >> $log


