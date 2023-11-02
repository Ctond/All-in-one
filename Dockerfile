FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install -y \
    apt-transport-https \
    python3-yaml python3-jinja2 python3-paramiko \
    ansible ansible-lint \
    openssh-server openssh-client
RUN apt clean && apt autoremove

ENTRYPOINT ["ssh-keygen", "ssh-copy-id"]
CMD ["ansible-playbook", "/etc/ansible/daubi.yml", "/bin/sh"]