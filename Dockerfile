FROM ubuntu:22.04
RUN export DEBIAN_FRONTEND=noninteractive \ 
    && apt-get update -y \
    && apt install git -y \
    && apt-get update -y \
    && apt upgrade -y \
    && apt install python3-dev openssl gcc -y \
    && apt install libffi-dev -y \
    && apt install python3 -y \
    && apt install python3-pip -y \
    && RUN curl https://sh.rustup.rs -sSf | bash -s -- -y \
    && pip3 install --upgrade pip \
    && git clone https://github.com/bee-san/Ultimate-hacking-bot.git
WORKDIR /Ultimate-hacking-bot
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python3", "main.py" ]
