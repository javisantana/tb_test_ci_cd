
export API_ENDPOINT="https://api.tinybird.co"
echo "cleaning the repo"


for pipe in $(curl -H "Authorization: Bearer ${TOKEN}" "${API_ENDPOINT}/v0/pipes" | jq -r ".pipes[].name"); do \
  curl -H "Authorization: Bearer ${TOKEN}" -X DELETE "${API_ENDPOINT}/v0/pipes/${pipe}"; \
done
for ds in $(curl -H "Authorization: Bearer ${TOKEN}" "${API_ENDPOINT}/v0/datasources" | jq -r ".datasources[].name"); do \
  curl -H "Authorization: Bearer ${TOKEN}" -X DELETE "${API_ENDPOINT}/v0/datasources/${ds}"; \
done
# clean pipes again
for pipe in $(curl -H "Authorization: Bearer ${TOKEN}" "${API_ENDPOINT}/v0/pipes" | jq -r ".pipes[].name"); do \
  curl -H "Authorization: Bearer ${TOKEN}" -X DELETE "${API_ENDPOINT}/v0/pipes/${pipe}"; \
done
for ds in $(curl -H "Authorization: Bearer ${TOKEN}" "${API_ENDPOINT}/v0/datasources" | jq -r ".datasources[].name"); do \
  curl -H "Authorization: Bearer ${TOKEN}" -X DELETE "${API_ENDPOINT}/v0/datasources/${ds}"; \
done
