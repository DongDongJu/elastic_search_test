#!/bin/bash

ES='http://localhost:9200'
ESIDX='seunjeon-idx'

curl -XDELETE "${ES}/${ESIDX}?pretty"
sleep 1
curl -XPUT "${ES}/${ESIDX}/?pretty" -d '{
  "settings" : {
    "index":{
      "analysis":{
        "analyzer":{
          "korean":{
            "type":"custom",
            "tokenizer":"seunjeon_default_tokenizer"
          }
        },
        "tokenizer": {
          "seunjeon_default_tokenizer": {
            "type": "seunjeon_tokenizer",
            "user_words": ["테스트", "배"]
          }
        }
      }
    }
  }
}'

sleep 1

echo "========================================================================"
curl -XGET "${ES}/${ESIDX}/_analyze?analyzer=korean&pretty" -d '테스트 합니다'
echo "========================================================================"
curl -XGET "${ES}/${ESIDX}/_analyze?analyzer=korean&pretty" -d '집에 언제가지'
echo "========================================================================"
curl -XGET "${ES}/${ESIDX}/_analyze?analyzer=korean&pretty" -d '나는 배가 고프다'
