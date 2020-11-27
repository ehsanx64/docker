#!/bin/bash

echo "Running go web app on http://127.0.0.1:3030"
echo "Press Ctrl+C to stop..."
docker run -p 3030:3001 -it --rm --name goweb1 golang-web
