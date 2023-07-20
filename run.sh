#!/bin/bash
set -e

horovodrun -np $num_gpus -H $host --timeline-filename /workspace/timeline/timeline.json \
  python3 /horovod/examples/pytorch/pytorch_mnist.py

sleep 10
