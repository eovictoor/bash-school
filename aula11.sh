#!/usr/bin/bash



if test "$USER" != "root"; then 
    echo "Entre como usuario priveligiado (root)"
    exit 1
fi
clear
echo -e "Vamos instalar algum pacote?\n1) Instalar\n2) Sair\n3) Fix Apt\n4) Update Apt\n5) Upgrade Apt"
read option

if test "$option" = "1"; then 
    clear
    echo "Digite o nome do pacote"
    read pacote 
    if test -z "$pacote" ; then 
        echo "Pacote invalido."
    else 
        clear 
        echo "Buscando e instalando o pacote $pacote"
        echo "$(apt-get install $pacote)"
    fi 
elif test "$option" = "0"; then 
    clear 
    echo "Estou te esperando mais tarde :)"
    exit 1
elif test "$option" = "3"; then 
    clear
    echo "$(apt-get --fix-broken install)"
elif test "$option" = "4"; then 
    echo "$(apt-get update)"
elif test "$option" = "5"; then 
    echo "$(apt-get upgrade)"
else 
    echo "Opcao invalida"
    exit 1 
fi
