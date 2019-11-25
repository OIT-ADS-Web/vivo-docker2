FROM solr:latest

COPY ./vivocore /opt/vivocore

RUN mkdir -p /opt/temp

CMD solr-create -c vivocore -d /opt/vivocore
