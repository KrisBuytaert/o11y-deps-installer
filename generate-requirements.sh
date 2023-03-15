#!/bin/bash

set -e

tmpdir=$(mktemp -d)
python3 -m venv $tmpdir
source $tmpdir/bin/activate
pip install --upgrade pip
pip install ansible
pip freeze > requirements.txt

deactivate
