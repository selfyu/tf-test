#!/bin/bash -ex


python ~/yunos/ai/py3-venv/lib/python3.5/site-packages/tensorflow/python/tools/freeze_graph.py \
	--input_graph ./save/model.pbtxt \
	--input_checkpoint ./save/model.ckpt \
	--output_graph ./out.pb \
	--output_node_names=Softmax
