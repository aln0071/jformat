#!/bin/bash
# author Alan Kuriakose
# send queries if any to aln0071@gmail.com
if [ "$#" -ne 1 ]; then
RED='\033[0;31m';
NC='\033[0m';
echo -e "${RED}##### ERROR #####";
echo -e "Illegal number of arguements";
echo "usage:- $0 \"path to folder containing json files\"";
echo "NOTE:- Path should be inside double quotes."
echo "Author:- Alan Kuriakose";
echo "Send queries if any to aln0071@gmail.com";
exit;
fi
GREEN='\033[0;32m';
path=/$(echo $1 | sed -e 's/:\\/\//g; s/\\/\//g');
cd "$path";
for filename in ./*.json; do cat "$filename" | json_pp > TeMp; mv TeMp "$filename"; done;
echo -e "${GREEN}##### script execution completed #####";
