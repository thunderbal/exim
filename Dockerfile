FROM debian:stable-slim
RUN apt-get update && apt-get install -y --no-install-recommends exim4
EXPOSE 25
ADD target/ /
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "-bd", "-v" ]