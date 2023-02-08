install:
	poetry install

build:
	poetry build

package-install:
	python3 -m pip install --user dist/*.whl

reinstall: build package-install
	pip install --user dist/*.whl --force-reinstall

full-reinstall: build package-install reinstall

.PHONY: install build reinstall