#!/bin/bash


case "$1" in 
    "build_generator") 
    docker build -t generator-app ./generator
    ;;
    "create_local_data")
    python3 ./generator/generate.py local_data
    ;;
    "run_generator")
    docker run --rm -v "$(pwd)/data:/data" generator-app
    ;;
    "build_reporter")
    docker build -t reporter-app ./reporter
    ;;
    "run_reporter")
    docker run --rm -v "$(pwd)/data:/data" reporter-app
    ;;
    "structure")
    tree
    ;;
    "clear_data")
    sudo rm data/*
    ;;
    "inside_generator")
    docker run --rm -v "$(pwd)/data:/data" generator-app ls -la /data
    ;;

 esac
 
