#!/bin/bash

# semi-automatically update cuda8
echo "FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04" > ./miniconda-gpu/8/Dockerfile
tail -n +2 ./miniconda-cpu/Dockerfile >> ./miniconda-gpu/8/Dockerfile

echo "FROM moskomule/dockerfiles:cuda8" > ./server/8/Dockerfile
tail -n +2 ./server/9/Dockerfile >> ./server/8/Dockerfile

echo "finished!"
