#!/bin/bash
echo "Criando Diretórios"
mkdir /publico
mkdir /adm
mkdir /rh
mkdir /sec
echo "Diretórios criados!"

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_RH
groupadd GRP_SEC
echo "Grupos Criados!"

echo "Fazendo Definições..."
chown root:GRP_ADM /adm/
chown root:GRP_RH /rh/
chown root:GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /rh/
chmod 770 /sec/
chmod 777 /publico/
echo "Definiçõs Finalizadas!"

echo "Criando uduários do sistema..."
useradd -G GRP_ADM carlos -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd carlos -e

useradd -G GRP_ADM maria -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd maria -e

useradd -G GRP_ADM joao -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd joao -e

useradd -G GRP_RH debora -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd debora -e

useradd -G GRP_RH sebastiana -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd sebastiana -e

useradd -G GRP_RH roberto -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd roberto -e

useradd -G GRP_SEC josefina -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd josefina -e

useradd -G GRP_SEC amanda -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd amanda -e

useradd -G GRP_SEC rogerio -c "User convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd rogerio -e
echo "Usuários criados!"

echo "Finalizado!!"

