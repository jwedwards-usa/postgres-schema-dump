FROM postgres:latest

RUN rm -rf /var/lib/apt/lists/* && \
   apt-get update && \
   apt-get clean

ADD dump-schema.sh /dump-schema.sh
RUN chmod +x /dump-schema.sh

VOLUME /dump

USER postgres
ENTRYPOINT [ "/dump-schema.sh" ]
CMD [""]
