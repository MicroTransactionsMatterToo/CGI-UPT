#!/usr/bin/env bash
# Assign DIR as executing dir of bash script
DIR="$( cd "$( dirname "{BASH_SOURCE[0]}" )" && pwd )"
# Prompt the use for confirmation of update
echo "This will will update any scripts that have changed since the last update"
echo -n "Do you wish to continue: (y/n) "
read conf
if [[ ("$conf" == 'y') ||  ("$conf" == "yes") ]]; then
 FILECOUNT=1
 echo ""
 echo "Confirmed, now updating files"
 # Progress thingy
 for derp in "./cgi-bin/*"
 do
    FILECOUNT+=1
 done
 FILESDONE=1
 for items in ${DIR}/cgi-bin/*
 do
    $(sudo mkdir -p /usr/lib/cgi-bin/)
    # Progress stuff
    FILESDONE+=1
    echo -n "Moving script "
    echo -n "File is "
    echo ${items}
    $(sudo cp -f $items /usr/lib/cgi-bin/)
    echo ""
    echo -n "Moved "
    echo -n ${items}
    echo " to /usr/lib/cgi-bin"
    echo -n ${FILESDONE}
    echo -n "/"
    echo ${FILECOUNT}
    sleep 0.5
 done
 echo "Done"
 else
    echo "Abort"
fi