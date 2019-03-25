for line in $(cat ove2.0_deleteFiles.txt | sed 's/\r//')
do
rm -rf /data/wwwroot/ove_2.0/${line}
done
