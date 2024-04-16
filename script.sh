#!/bin/bash
echo "Passo - 01 Atualizando o Sistema e Adiconando ppa:grub-customizer"
sudo apt-get update
sudo apt-get upgrade

sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer
sudo apt-get install grub-customizer x

echo "Passo - 02 Instalando OS-Prober e Identificando OS-Windowns"
sudo apt install os-prober
sudo os-prober

echo "Passo - 03 Instalando grub-efi/common"
sudo apt install grub-efi grub-common
sudo grub-install

echo "Passo - 04 Copiando e Renomeando os Arquivos Para a Pasta Correta"
sudo cp /boot/grub/x86_64-efi/grub.efi /boot/efi/EFI/pop/grubx64.efi

