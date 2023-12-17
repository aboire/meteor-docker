set -e
VERSION="0.8.0"

# Normal image
docker tag djabatav/meteor djabatav/meteor:latest
docker tag djabatav/meteor djabatav/meteor:$VERSION

docker push djabatav/meteor:latest
docker push djabatav/meteor:$VERSION

# root image
docker tag djabatav/meteor:root djabatav/meteor:$VERSION-root

docker push djabatav/meteor:root
docker push djabatav/meteor:$VERSION-root
