# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

## Infrastructure validation workflow

The scheduled workflow defined in `.github/workflows/validate-infra.yml` runs Terraform plan validations for the AKS cluster plus domains infrastructure/environment each day at **07:00 UTC** against **test** only. Failures and drift notifications are sent to the SD Infra alerts Teams channel via the `TEAMS_WEBHOOK_URL_INFRA` secret.

* Deployment instructions

* ...
