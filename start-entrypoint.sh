#! /bin/bash

set -e

python deploy/Private/app.py &
python deploy/Public/app.py
