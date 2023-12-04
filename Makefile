FIXTURES = fixtures/admin.json \
		   fixtures/teams.json \
		   fixtures/players.json \
		   fixtures/matches.json \
		   fixtures/groups_fixture.json \


build:
	docker-compose build

up:
	docker-compose up

up-back:
	docker-compose up -d

up-build:
	docker-compose build
	docker-compose run --rm web python manage.py makemigrations
	docker-compose run --rm web python manage.py migrate
	docker-compose up

migrate:
	docker-compose exec web python manage.py migrate

migrations:
	docker-compose exec web python manage.py makemigrations
	make migrate

load-fixtures:
	docker-compose exec web python ./manage.py loaddata $(FIXTURES)