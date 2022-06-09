# apt install jq
# INPUT=''

while true; do IFS= read -rsn1 char; INPUT=$INPUT$char; echo $INPUT; curl --silent --request GET 'https://192.168.63.10:9200/movies-autocomplete/_search' -u admin:admin -k \
 --header 'Content-Type: application/json' \
 --data-raw '{
     "size": 5,
     "query": {
         "multi_match": {
             "query": "'"$INPUT"'",
             "type": "bool_prefix",
             "fields": [
                 "title",
                 "title._2gram",
                 "title._3gram"
             ]
         }
     }
 }' | jq .hits.hits[]._source.title | grep -i "$INPUT"; done
