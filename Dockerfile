FROM python:3.10-alpine
RUN apk add --no-cache git \
    && git clone https://github.com/bee-san/Ultimate-hacking-bot.git
WORKDIR /Ultimate-hacking-bot
RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "main.py" ]