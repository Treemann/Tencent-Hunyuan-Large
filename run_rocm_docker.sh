DOCKER=rocm/pytorch-training:v25.9_gfx950
NAME=hunyuan-large-rocm

docker run -it \
    --network host --ipc host \
    --privileged \
    -v ${PWD}:${PWD} \
    -w ${PWD} \
    --name ${NAME} \
    ${DOCKER} \
    /bin/bash
