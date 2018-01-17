curl "http://localhost:4741/infos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "info": {
      "additional_info": "'"${INFO}"'",
      "ingredient_id": "'"${ID}"'"
    }
  }'
echo
