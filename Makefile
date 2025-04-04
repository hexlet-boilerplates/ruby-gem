install:
	bundle install

lint:
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A

test:
	bundle exec rake test

.PHONY: test
