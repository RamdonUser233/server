FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

# instala wget e unzip
RUN apt-get update && apt-get install -y wget unzip

# baixa ngrok
RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.zip \
    && unzip ngrok-v3-stable-linux-amd64.zip \
    && mv ngrok /usr/local/bin

RUN chmod +x start.sh

CMD ["./start.sh"]
