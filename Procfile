postgres: postgres -D /usr/local/var/postgres
redis: redis-server
web: bundle exec unicorn_rails -p $PORT -c ./config/unicorn.rb
worker: bundle exec rake jobs:work