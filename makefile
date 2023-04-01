
setup:
	python -m venv ~/.simple-py

source:
	. ~/.simple-py/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint-force:
	isort .
	black .

lint-check:
	isort . --check-only
	black --check .
	flake8 .
	pylint --disable=R,C,pointless-string-statement hello_world.py ./tests

test:
	coverage run -m pytest -vv ./tests
