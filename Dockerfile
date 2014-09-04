FROM base/archlinux:latest
RUN pacman -Sy -q
RUN pacman -S --noconfirm -q postgresql-libs ruby
RUN mkdir /backup
COPY restore /root/
RUN chmod u+x /root/restore
ENTRYPOINT ["/root/restore"]

