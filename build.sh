MKDOCS_VER=$(grep "mkdocs" requirements.txt | cut -d '=' -f 3)
CR_IMAGE_NAME=$1
CR_IMAGE_TAG="${MKDOCS_VER}-$(date +%Y%m%d)"

docker build . \
    --file Dockerfile \
    --tag ${CR_IMAGE_NAME}:${CR_IMAGE_TAG} \
    --tag ${CR_IMAGE_NAME}:latest
