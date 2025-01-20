#!/bin/bash

# Variáveis
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')
SERVICO="Nginx"

# Verificação
if systemctl is-active --quiet nginx; then
    STATUS="ONLINE"
    MENSAGEM="O serviço Nginx está funcionando corretamente."
    echo "$DATA_HORA | $SERVICO | $STATUS | $MENSAGEM" >> ~/nginx_logs/online.log
else
    STATUS="OFFLINE"
    MENSAGEM="O serviço Nginx está fora do ar."
    echo "$DATA_HORA | $SERVICO | $STATUS | $MENSAGEM" >> ~/nginx_logs/offline.log
fi

