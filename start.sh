#!/bin/bash

# inicia servidor em background
java -Xms256M -Xmx400M -jar server.jar nogui &

# espera iniciar
sleep 20

# autentica ngrok
ngrok config add-authtoken 3BcrS8etzgqjwRyxCF2xXaS45U3_3yUPt3gEk4r1yyuhB25ZT

# abre túnel TCP
ngrok tcp 25565
