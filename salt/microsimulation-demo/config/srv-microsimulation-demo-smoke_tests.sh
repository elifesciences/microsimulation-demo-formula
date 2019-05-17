#!/bin/bash
set -ex

echo "Loading homepage..."
[ $(curl -v http://localhost:8080/ -o /dev/null -w '%{http_code}') == 200 ]
