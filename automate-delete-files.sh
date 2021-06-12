#!/bin/sh


# Attempting to delete files that are longer life than 30 days


# path of your file keep track `list all files from the folder`
arr=(/mnt/d/User/Temps/trash_bin/*)


for file in "${arr[@]}";  do
        if [[ $(find "$file" -mtime +30 -print) ]]; then
                msgFile="${file##*/}"
                echo -e "$(date +"%d/%m/%Y-%T")   $msgFile is deleted">>/home/kavin/logs/automate-delete/delete.log
        fi
done
