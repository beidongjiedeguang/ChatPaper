#! /bin/bash

set -e

cd deploy/Private/ && python app.py &
cd deploy/Public/ && python app.py
