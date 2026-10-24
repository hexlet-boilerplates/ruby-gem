install:
	bundle install
	mise exec -- hk install --mise

lint:
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A

test:
	bundle exec rake test

update-deps:
	bundle update-interactive
.PHONY: test
