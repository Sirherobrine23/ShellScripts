#!/bin/bash
echo " "
echo "Exemplo"
echo "ID: 1UlemfOSQUxbxTFDriAeDV7o1hRwXcS43"
echo "NOME: gdrive"
echo " "
echo "Por favor não coloque espaço"
echo " "
read -rp "ID do arquivo: " -e -i "" ID
read -rp "qual nome do arquivo: " -e -i "" NAME
echo " "
echo "wget https://drive.google.com/uc?export=download&id=$ID -O $NAME"
echo " "
wget "https://drive.google.com/uc?export=download&id=$ID" -O $NAME
