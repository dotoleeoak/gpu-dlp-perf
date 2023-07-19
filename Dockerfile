FROM horovod/horovod:sha-42b2cdf

COPY pytorch_mnist.py /workspace/pytorch_mnist.py

CMD ["python3", "/workspace/pytorch_mnist.py"]
