FROM python:3.6.3-alpine3.6


RUN mkdir /data
VOLUME /data

EXPOSE 8090
COPY index.html /data
WORKDIR /data

CMD ["python", "-m" , "http.server", "8090"]