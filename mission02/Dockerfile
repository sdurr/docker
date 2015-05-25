FROM ubuntu:14.04

RUN apt-get update update ; apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN adduser sdurr
RUN echo 'sdurr:sdurr' | chpasswd

ADD sudoers /etc/sudoers

RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 42
CMD ["/usr/sbin/sshd", "-D"]


