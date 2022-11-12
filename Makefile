TESTS_OPT=$(or $(OPT), tests)
ROOT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

app.build:
	docker build -t php8.1-phpunit .

app.tests:
	docker run -v $(ROOT_DIR):/srv/app php8.1-phpunit:latest vendor/bin/phpunit --testdox $(TESTS_OPT)

app.sh:
	docker run -it -v $(ROOT_DIR):/srv/app php8.1-phpunit:latest bash
