#!/usr/bin/env bash

export CONDA_ENV_NAME=vibe-env
eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV_NAME

mkdir -p data
cd data
gdown "https://drive.google.com/uc?id=1untXhYOLQtpNEy4GTY_0fL_H-k6cTf_r"
unzip vibe_data.zip
rm vibe_data.zip
cd ..
mv data/vibe_data/sample_video.mp4 .
mkdir -p $HOME/.torch/models/
mv data/vibe_data/yolov3.weights $HOME/.torch/models/
