default:
	@rm -rf .terraform
	@git pull
	@terraform init -backend-config=env-dev/state.tfvars
	@terraform apply -auto-approve -var-file=env-dev/main.tfvars


