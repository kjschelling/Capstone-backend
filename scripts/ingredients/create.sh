curl "http://localhost:4741/ingredients/" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "ingredient": {
      "name": "'"${NAME}"'",
      "note": "'"${NOTE}"'"
    }
  }'
echo
