#!/bin/bash

set -e

rm -f tmp/pids/server.pid

rails db:create
rails db:migrate

# rails db:seed

rake assets:precompile RAILS_ENV=production

# wheneverを使ってcronジョブを設定
whenever --update-crontab

# cronサービスの起動
service cron start

rails s -p 8000 -b '0.0.0.0'