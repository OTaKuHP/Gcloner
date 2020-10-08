FROM python:latest
ARG DEBIAN_FRONTEND="noninteractive"
WORKDIR /
COPY . .
RUN chmod 777 /
RUN apt-get -qq update
RUN apt-get -qq install -y python3-pip python3-lxml
RUN pip3 install --no-cache-dir -r requirements.txt && \
    wget -qq https://github.com/Nenokkadine/CDN/raw/master/Error403/fclone.zip && \
    unzip -qq fclone.zip && chmod +x fclone
CMD ["python3","telegram_gcloner/telegram_gcloner.py"]
