FROM python:latest
ARG DEBIAN_FRONTEND="noninteractive"
WORKDIR /
COPY . .
RUN chmod 777 /
RUN pip3 install --no-cache-dir -r requirements.txt && \
    wget -qq https://github.com/Nenokkadine/CDN/raw/master/Error403/gclone.zip && \
    unzip -qq gclone.zip && chmod +x gclone
CMD ["python3","telegram_gcloner/telegram_gcloner.py"]
