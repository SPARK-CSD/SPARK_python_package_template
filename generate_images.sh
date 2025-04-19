#Generate Dockerfile.

#!/bin/sh

 set -e

generate_docker() {
  docker run --rm kaczmarj/neurodocker:0.7.0 generate docker \
             --base BaseImage \
             --pkg-manager apt \
             --arg DEBIAN_FRONTEND=noninteractive \
             --miniconda \
               version=latest \
               conda_install="python=3.11" \
               create_env='spark_python_template' \
               activate=true \
            --copy . /home/spark_python_template \
            --run-bash "source activate spark_python_template && cd /home/spark_python_template && pip install -e ." \
            --env IS_DOCKER=1 \
            --workdir '/tmp/' \
            --entrypoint "/neurodocker/startup.sh  spark_python_template"
}

# generate files
generate_docker > Dockerfile

# check if images should be build locally or not
if [ $1 = local ]; then
    echo "docker image will be build locally"
    # build image using the saved files
    docker build -t spark_python_template:local .
else
  echo "Image(s) won't be build locally."
fi            


