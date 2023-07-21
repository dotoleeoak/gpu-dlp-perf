# gpu-dlp-perf

Horovod를 활용한 GPU와 deep learning 학습 시간의 관계 측정

## Prerequisite

Docker와 NVIDIA Container Toolkit이 설치되어 있어야 합니다.  
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/user-guide.html

## Guide

우선 이 repo를 clone받아주세요.

```bash
git clone https://github.com/dotoleeoak/gpu-dlp-perf
```

이미지 데이터를 저장해야합니다. CIFAR-10을 아래 링크에서 받아주세요.  
https://www.kaggle.com/datasets/swaroopkml/cifar10-pngs-in-folders

다운로드가 되면, 이 repo에 옮겨주세요.

```bash
cd gpu-dlp-perf
mv <downloaded-dir>/archive.zip .
unzip archive.zip
```

Docker를 설치하고, 다음 명령어를 입력해주세요.

```bash
docker compose up -d
```
