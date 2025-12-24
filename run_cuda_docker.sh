DOCKER=nvcr.io/nvidia/pytorch:25.06-py3
NAME=hunyuan-large-cuda

docker run -it \
    --gpus all \
    --network host --ipc host \
    --privileged \
    -v ${PWD}:${PWD} \
    -w ${PWD} \
    --name ${NAME} \
    ${DOCKER} \
    /bin/bash
