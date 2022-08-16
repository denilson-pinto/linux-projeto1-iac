#!/bin/bash

echo "CRIANDO DIRETÓRIOS..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso."

echo "CRIANDO GRUPOS DE USUÁRIOS..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criados com sucesso."

echo "CRIANDO USUÁRIOS E OS ADICIONANDO AOS GRUPOS..."

useradd carlos -c "Carlos Alcaraz" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Sakkari" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Sousa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Débora Osaka" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Korda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Bautista Agut" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Badosa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Anisimova" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Federer" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuários criados com sucesso."

echo "APLICANDO PERMISSÕES DOS DIRETÓRIOS..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões aplicadas com sucesso."

echo "FIM!"
