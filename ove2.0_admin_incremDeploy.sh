#!/bin/bash
echo "start deploy..."
: '
time=$(date "+%Y%m%d%H%M%S")
bak_filename=whdx_ove_bak_$time
cd /data/wwwroot
if test -d whdx_ove
then
    cp -r whdx_ove $bak_filename
fi
'
cd /home/lyp
/bin/cp -rf ove_admin_2.0 /data/wwwroot
cd /home/lyp/ove_admin_2.0
rm -rf *
echo "deploy finished"
