#!/bin/bash -xe

MO=~/yunos/ai/mo/model-optimizer-tensorflow/mo_tf.py
#MO=/opt/intel/computer_vision_sdk/deployment_tools/model_optimizer/mo_tf.py

$MO --log_level=DEBUG \
	--input_model ./out.pb \
	--input_shape='[1, 28, 28]' \
	$@ 2>&1 | tee ./log-mo.txt

