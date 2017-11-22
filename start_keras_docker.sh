#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

GPU=0 nvidia-docker run -it -v $DIR:/src/workspace --net=host --env KERAS_BACKEND=tensorflow keras