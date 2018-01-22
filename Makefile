# Copyright (c) 2016 Cisco and/or its affiliates.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export WS_ROOT=$(CURDIR)
GDB?=gdb
PLATFORM?=vpp
SAMPLE_PLUGIN?=no
MACHINE=$(shell uname -m)



.PHONY: help bootstrap wipe wipe-release build build-release rebuild rebuild-release
.PHONY: run run-release debug debug-release build-vat run-vat pkg-deb pkg-rpm
.PHONY: ctags cscope
.PHONY: test test-debug retest retest-debug test-doc test-wipe-doc test-help test-wipe
.PHONY: test-cov test-wipe-cov

help:
	@echo "Make Targets:"
	@echo " checkstyle          - check coding style"
	@echo " fixstyle            - fix coding style"
	

checkstyle:
	@scripts/checkstyle.sh

fixstyle:
	@scripts/checkstyle.sh --fix

define banner
	@echo "========================================================================"
	@echo " $(1)"
	@echo "========================================================================"
	@echo " "
endef



