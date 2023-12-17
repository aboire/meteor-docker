set -e

docker build -t djabatav/meteor ./image
docker build -t djabatav/meteor:root ./root-image

semantic-release --debug
