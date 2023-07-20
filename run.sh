#!/bin/bash
set -e

for i in $(seq 1 $num_gpus); do
  echo "============== Running with $i GPUs =============="
  horovodrun -np $i -H $host:$i --timeline-filename /workspace/timeline/timeline_single_$i.json \
    python3 /horovod/examples/pytorch/pytorch_mnist.py
  sleep 10
done

sleep 10
