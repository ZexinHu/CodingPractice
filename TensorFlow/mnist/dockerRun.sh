docker run -ti --rm \
--privileged=true \
--mount type=bind,source=/etc/localtime,target=/etc/localtime,readonly \
--mount type=bind,source=/etc/apt/sources.list,target=/etc/apt/sources.list,readonly \
--mount type=bind,source=/home/hzx,target=/home/hzx \
tensorflow/tensorflow:latest-gpu bash

docker run -ti --runtime=nvidia --rm \
--mount type=bind,source=/etc/localtime,target=/etc/localtime,readonly \
--mount type=bind,source=/etc/apt/sources.list,target=/etc/apt/sources.list,readonly \
--mount type=bind,source=/home/hzx,target=/home/hzx \
tensorflow/tensorflow:latest-gpu bash

docker run -ti --rm --runtime=nvidia \
--privileged=true \
--mount type=bind,source=/etc/localtime,target=/etc/localtime,readonly \
--mount type=bind,source=/etc/apt,target=/etc/apt,readonly \
--mount type=bind,source=/home/hzx,target=/home/hzx \
tensorflow/tensorflow:latest-gpu bash

