.DEFAULT_GOAL := validate

.PHONY: validate

validate:
	curl --request POST --data-binary @lifx-swagger.yaml --header "Content-Type: text/vnd.yaml" https://online.swagger.io/validator/debug | jq -e 'has("messages") | not'
