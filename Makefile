venv: venv/bin/activate

venv/bin/activate: requirements.txt
	@test -d venv || python3 -m venv venv
	@. venv/bin/activate; pip install -Ur requirements.txt
	@touch venv/bin/activate

clean:
	rm -rf venv

start:
	@cd django_project; \
	python manage.py runserver

.PHONY: venv clean start venv/bin/activate
