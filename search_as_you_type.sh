#! /bin/bash

# Para executar o script:
# apt install jq
# INPUT=''

printf "Digite o título do filme:\n"

while true; do IFS= read -rsn1 char; INPUT=$INPUT$char; echo $INPUT; curl --silent --request GET 'https://192.168.63.10:9200/movies/_search' -u admin:admin -k \
 --header 'Content-Type: application/json' \
 --data-raw '{
     "size": 7,
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
 }' | jq .hits.hits[]._source.title|grep -i --color "$INPUT"; echo "------------------------------"; done
