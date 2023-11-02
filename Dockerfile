FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install -y \
    apt-transport-https \
    python3-yaml python3-jinja2 python3-paramiko \
    ansible ansible-lint

RUN apt clear && apt autoremove

CMD ["ansible-playbook", "/ansible/daubi.yml"]