#!/bin/bash


case "$1" in 
    "build_generator") 
    docker build -t generator-app ./generator
 ;;
    "create_local_data")
    python3 ./generator/generate.py local_data
;;
    "run_generator")
    docker run -v "$(pwd)/data:/data" generator-app
;;

 esac
 
