FROM timberio/vector:0.55.0-alpine
RUN apk add --no-cache bash
COPY vector-configs /etc/vector/
COPY ./start-fly-log-transporter.sh .
CMD ["bash", "start-fly-log-transporter.sh"]
ENTRYPOINT []
