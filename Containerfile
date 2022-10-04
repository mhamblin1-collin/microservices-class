FROM fedora:latest
RUN dnf -yqq install tuxpaint
RUN dnf -yqq install vim
RUN dnf -yqq install httpd
COPY myindex.html /var/www/html
ENTRYPOINT /usr/sbin/https -DFOREGROUND
EXPOSE 80
