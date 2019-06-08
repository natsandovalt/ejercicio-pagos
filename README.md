# README

* Ruby version: 2.5.3

* Rails version: 5.2.3

* Before run the project you must:

1. Install redis
2. bundle install
3. rake db:create
4. rake db:migrate
5. rake db:seed

* To run the project:

1. redis-server /usr/local/etc/redis.conf
2. bundle exec redis-server (inside the root project)
3. rails s (inside the root project)
