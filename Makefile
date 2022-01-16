SHELL:=/bin/bash
include .env

EXAMPLE=$(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

.PHONY: all clean validate test docs format

all: validate test docs format

clean:
	rm -rf .terraform/

validate:
	$(TERRAFORM) init && $(TERRAFORM) validate && \
		$(TERRAFORM) init modules/terraform-lock && $(TERRAFORM) validate modules/terraform-lock && \
		$(TERRAFORM) init modules/single-table && $(TERRAFORM) validate modules/single-table

test: validate
	$(CHECKOV) -d /work

	$(TFSEC) /work

diagram:
	$(DIAGRAMS) diagram.py

docs: diagram
	$(TERRAFORM_DOCS) markdown ./ >./README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/terraform-lock >./modules/terraform-lock/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/single-table >./modules/single-table/README.md

format:
	$(TERRAFORM) fmt -list=true ./ && \
		$(TERRAFORM) fmt -list=true ./modules/terraform-lock && \
		$(TERRAFORM) fmt -list=true ./modules/single-table

example:
	$(TERRAFORM) init examples/$(EXAMPLE) && $(TERRAFORM) plan -input=false examples/$(EXAMPLE)
