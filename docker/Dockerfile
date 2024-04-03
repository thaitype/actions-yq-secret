FROM mikefarah/yq:4

COPY entrypoint.sh /entrypoint.sh

# Fix permissions issues when attempting to read/write
# https://github.com/mikefarah/yq/?tab=readme-ov-file#running-as-root
USER root

ENTRYPOINT ["/entrypoint.sh"]