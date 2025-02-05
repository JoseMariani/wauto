#!/bin/bash
#
# Variables to be used for background styling.

# app variables

jwt_secret=$(openssl rand -base64 32)
jwt_refresh_secret=$(openssl rand -base64 32)

MYSQL_PASSWORD=$(openssl rand -base64 12)
DEPLOY_PASSWORD="123456",
deploy_email=deploy@deploy.com
