# r(read) = 4, w(write) = 2, x (execute) = 1 dan tanpa izin akses = 0
# sudo chmod 755 build_push_image.sh

# build image from current working dir
docker build -t item-app:v1 .

# print all images
docker images

# tagging image before push
docker tag item-app:v1 ghcr.io/havus/dicoding-proyek-pertama-microservice:1.0

# create env var CR_PAT to store github package password
# export CR_PAT=ghp_sometoken

# Login to github container registry (ghcr)
echo $CR_PAT | docker login ghcr.io --username havus --password-stdin

# push image to container registry
docker push ghcr.io/havus/dicoding-proyek-pertama-microservice:1.0
