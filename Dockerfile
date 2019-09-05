FROM scratch
ADD ubuntu-10.04-root.tar.xz /
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y

RUN export DEBIAN_FRONTEND=noninteractive
RUN install.sh ..
RUN run.sh ..
RUN rm -f /var/www/html/index.html

EXPOSE 3306
EXPOSE 80
EXPOSE 22
EXPOSE 7171
EXPOSE 7172

CMD ["/bin/bash"]