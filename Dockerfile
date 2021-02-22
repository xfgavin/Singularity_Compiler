from debian:buster-slim
ENV DEBIAN_FRONTEND noninteractive
ADD installer.sh /tmp
ADD entrypoint.sh /
RUN /tmp/installer.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["1.14.2"]
ENV DEBIAN_FRONTEND teletype
