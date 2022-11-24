#!/bin/bash

exp_step=900000
vocoder_dir=/nfs1/yi.liu/tts/hifi-gan/LJ_V1
vocoder_config=$vocoder_dir/config.json
vocoder_path=$vocoder_dir/generator_v1

mkdir -p output/result/LJSpeech
python synthesize_ori.py \
    --source corpus/ljs_audio_text_test_filelist.txt \
    --restore_step ${exp_step} --mode batch_eval \
    --vocoder_path $vocoder_path \
    --vocoder_config $vocoder_config \
    -p config/LJSpeech/preprocess.yaml \
    -m config/LJSpeech/model.yaml \
    -t config/LJSpeech/train.yaml \
