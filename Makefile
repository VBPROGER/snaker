export IS_MAKEFILE := 1
SHELL := /usr/bin/env bash
.SILENT: all copy_include startup rm_include rmdir_include config pre_all reinstall

all: pre_all config rm_include copy_include startup
pre_all:
	chmod 777 makefile_parts/*.sh
startup:
	makefile_parts/startup_run.sh
rm_include:
	sudo makefile_parts/rm_include.sh
rmdir_include:
	sudo makefile_parts/rmdir_include.sh
copy_include:
	sudo makefile_parts/copy_include.sh
config:
	chmod 777 makefile_parts/config.sh
	makefile_parts/config.sh
reinstall:
	cd ~ && rm -rf snaker && git clone https://github.com/VBPROGER/snaker.git -b logging && cd snaker && make && cd .. && rm -rf snaker
