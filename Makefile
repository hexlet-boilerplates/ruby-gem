install:
	bundle install
	mise exec -- hk install --mise

lint:
	bundle exec rubocop
	rumdl check .
	typos
	jactionlint

lint-fix:
	bundle exec rubocop -A

test:
	bundle exec rake test

update-deps:
	bundle update-interactive
.PHONY: test
