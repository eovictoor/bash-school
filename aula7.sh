#!/usr/bin/bash
# -eq verifica se e igual (numeros)
test "1" -eq "2" # 1 e igual a 2?
echo $?
#Retorna 0 para sim, e 1 para nao


echo -e "\n"

test "1" -ne "2"
echo $?
#1 nao e igual a 2? 
# Sim - 0

echo -e "\n"

test "10" -lt "2"
echo $?
# 10 e menor que 2?
# Nao - 1

echo -e "\n"

test "10" -lt "20"
echo $?
# 10 e menor que 20?
# Sim - 0

echo -e "\n"

test "10" -le "10"
echo $?
# 10 e menor ou igual a 10?
# Sim - 0

echo -e "\n"

test "10" -le "7"
echo $? 
# 10 e menor ou igual a 7?
# Nao - 1

echo -e "\n"

test "20" -ge "15"
echo $?
# 20 e maior ou igual a 15?
# Sim - 0

echo -e "\n"

test -e "aula1.sh"
echo $?

# Arquivo aula1.sh existe?
# Sim - 0

echo -e "\n"

