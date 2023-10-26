FROM ubuntu:20.04

RUN apt update && apt upgrade -y \
    apt install -y \
    python3 \
    python3-yaml \
    python3-jinja2 \
    pythin3-paramiko \
    ansible ansible-lint

RUN apt clear \
    apt autoremove
    
CMD ["ansible-playbook" "ansible-inventory"]