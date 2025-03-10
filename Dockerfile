FROM minio/minio:latest
ENTRYPOINT ["/bin/sh", "-c", "minio ${MINIO_COMMAND:-server} ${MINIO_DIR:-/data} --address=0.0.0.0:9000 -e MINIO_ROOT_USER=${MINIO_ROOT_USER:-minio} -e MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD:-minio}"] 
