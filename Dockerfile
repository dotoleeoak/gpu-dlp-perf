ARG num_gpus=4
ARG host=localhost:4
ARG timeline=timeline.json
ARG filename=pytorch_mnist.py

FROM horovod/horovod:sha-42b2cdf

COPY . /workspace

CMD ["horovodrun", "-np", "$num_gpus", "-H", "$host", \
  "--timeline-filename", "/workspace/timeline/$timeline", \
  "python3", "/workspace/$filename"]
