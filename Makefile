.PHONY: init plan apply destroy check

init:
	make check
	docker-compose run --rm terraform init

plan:
	make check
	docker-compose run --rm terraform plan

apply:
	make check
	docker-compose run --rm terraform apply

destroy:
	make check
	docker-compose run --rm terraform destroy

check:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform fmt -check
	docker-compose run --rm terraform validate
