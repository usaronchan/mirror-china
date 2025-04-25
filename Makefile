.DEFAULT_GOAL := make
.PHONY: check sync remove mirror

check:
	python3 --version

sync:
	python3 sync.py china

remove:
	python3 sync.py remove

mirror:
	sudo bash archlinux/mirror.sh
