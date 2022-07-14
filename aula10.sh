#!/usr/bin/bash

if [ "$(hostname)" = "ehoq" ]; then 
    echo "Acesso autorizado"
    echo "Digite a senha '-' "
    read senha 
    if test "$senha" == "senha1234"; then 
        echo "Acesso autorizado"
    else 
        echo "Senha incorreta."
    fi
else 
    echo "Sem permissao."
fi