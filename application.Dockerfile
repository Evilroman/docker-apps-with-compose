FROM busybox
MAINTAINER evilroman

RUN mkdir /webapps
ADD hello-world.war /webapps/hello-world.war

VOLUME ["/webapps"]

CMD /bin/sh
