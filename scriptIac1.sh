#!/bin/bash


echo " Criando os Diretórios"

mkdir /publico 
mkdir /adm
mkdir /ven 
mkdir /sec

echo " Diretórios criados "


echo " Criando os Grupos"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo " grupos criados"

echo " Criando os usuários"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd maria -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd rogerio -e

echo " posicionando usuarios aos seus grupos"

adduser -aG GRP_ADM carlos maria joao 

adduser -aG GRP_VEN debora sebastiana roberto
 
adduser -aG GRP_SEC josefina amanda rogerio

echo "Alterando o grupo dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo " Alterando as permissoes dos diretorios"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "configurações corretas"


