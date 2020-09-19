#!/bin/bash

set -eu

# will build from /tmp because terraspace/Gemfile may interfere
cd /tmp

export PATH=~/bin:$PATH # ~/bin/terraspace wrapper

set -x
terraspace new project infra --examples
cd infra
terraspace new bootstrap_test
terraspace new project_test demo --examples
terraspace test
