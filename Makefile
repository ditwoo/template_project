
tests: FORSE
	pyclean .; \
	PYTHONPATH=src pytest -vv .


codestyle: FORSE
	isort --line-length=120 --profile=black src && \
	black --line-length=120 src

codestyle-check: FORSE
	isort --line-length=120 --profile=black --check-only src && \
	black --line-length=120 --check src && \
	flake8 --max-line-length 120 --ignore=Q000,D100,D205,D212,D400,D415,W605 src


FORSE: