#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


cd $DIR/nbs

echo "Download lecture notebook..."
for i in {1..7}
do
    wget -nc https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/lesson$i.ipynb
done

echo "Download utils files"
wget -nc https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/vgg16.py
wget -nc https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/vgg16bn.py
wget -nc https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/utils.py

