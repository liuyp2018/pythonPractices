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
/bin/cp -rf whdx_ove /data/wwwroot
cd /home/lyp/whdx_ove
rm -rf *
echo "deploy finished"
