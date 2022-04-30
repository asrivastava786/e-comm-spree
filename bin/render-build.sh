#!/usr/bin/env bash
# exit on error
set -o errexit

bundle
bundle exec rails g spree_reffiliate:install


bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
#bundle exec rails db:migrate
#bundle exec rails db:seed
#bundle exec rake spree_sample:load
