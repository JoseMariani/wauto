#!/bin/bash
#
# Variables to be used for background styling.

# app variables

jwt_secret=$(openssl rand -base64 32)
jwt_refresh_secret=$(openssl rand -base64 32)

MYSQL_PASSWORD=$(pwgen -s 12 1)
deploy_email=deploy@deploy.com
