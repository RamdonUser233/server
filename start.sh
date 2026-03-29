#!/bin/bash

# inicia servidor em background
java -Xms256M -Xmx400M -jar server.jar nogui &

# espera iniciar
sleep 20

# autentica ngrok
ngrok config add-authtoken SEU_TOKEN_AQUI

# abre túnel TCP
ngrok tcp 25565
