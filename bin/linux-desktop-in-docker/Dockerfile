FROM debian:latest

RUN apt-get update && apt-get install -y iceweasel

RUN export uid=501 gid=20 && \
    mkdir -p /home/developer && \
    echo "user:x:${uid}:${gid}:User,,,:/home/user:/bin/bash" >> /etc/passwd && \
    echo "staff:x:${uid}:" >> /etc/group && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chmod 0440 /etc/sudoers && \
    chown ${uid}:${gid} -R /home/user

USER user
ENV HOME /home/user
CMD /usr/bin/iceweasel
