venv: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate
	pip install -Ur requirements.txt

clean:
	rm -rf venv

.PHONY: venv clean
