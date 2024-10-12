install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest -vv --cov=reflex_app_template/*.py --cov=rxconfig.py --cov=utils tests/test_*.py

format:
	black . *.py

lint:
	pylint --disable=R,C *.py utils/*.py tests/*.py reflex_app_template/*.py rxconfig.py rxconfig.py

#container-lint:
#	docker run -rm -i hadolint/hadolint < Dockerfile

refactor:
	format lint

deploy:
	echo "deploy not implemented"

all: install lint test format 
