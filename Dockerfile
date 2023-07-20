FROM horovod/horovod:sha-42b2cdf

ENV num_gpus=4
ENV host=localhost:4
ENV timeline=timeline.json

COPY . /workspace

CMD ["/workspace/run.sh"]
