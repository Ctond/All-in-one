FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install -y \
    apt-transport-https \
    python3-yaml python3-jinja2 python3-paramiko \
    ansible ansible-lint \
    openssh-server openssh-client \
    sshpass
RUN apt clean && apt autoremove
ENV NAME_PLAYBOOK=daubi.yml 

CMD ["ansible-playbook", "/etc/ansible/$NAME_PLAYBOOK", "/bin/sh"]