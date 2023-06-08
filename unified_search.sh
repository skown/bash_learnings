#!/bin/bash

#FILES="@tmp.json"
#FILES=$(jq -c '.[]' tmp2.json) 

input="tmp2.json"
while IFS= read -r line
do
	echo "$line" > tmp3.json
	curl -d "@tmp3.json" -X POST "API LINK" >> output.json
done < "$input"

#curl -X POST "API LINK" \
# -d "@tmp.json"
