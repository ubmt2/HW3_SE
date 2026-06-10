#!/bin/bash


case "$1" in 
 "build_generator" ) docker build -t generator_app ./generator
 
