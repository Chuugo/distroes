#!/bin/bash

read -p "Enter the user name : " username
echo "Validating $username"
if [ `grep -c $username /etc/passwd` -eq 0 ]
then
   echo "ERROR : PLEASE ENTER A VALID USERNAME."
   echo "EXITING"
   exit
else
  cd ~/Downloads

  #UPDATE
  dnf update -y
  
  dnf groupinstall "Development Tools" -y
  sudo dnf install thunar-megasync-Fedora_37.x86_64.rpm -y
  
  #kvm
  dnf group install --with-optional virtualization -y
  systemctl start libvirtd
  systemctl enable libvirtd
  usermod -aG libvirt $username
  
  
  #VISUAL STUDIO CODE
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  dnf check-update
  sudo dnf install code -y
  
  #VMWARE WS PRO 16
  chmod +x VMware-Workstation-Full-16.2.4-20089737.x86_64.bundle
  ./VMware-Workstation-Full-16.2.4-20089737.x86_64.bundle
  cd vmware-host-modules-workstation-16.2.4
  make
  sudo make install
  cd ..
  
  #java
  #dnf install https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.rpm -y
  
  #multimc
  #wget https://files.multimc.org/downloads/mmc-stable-lin64.tar.gz
   
  #mega
  
 
  echo "GCC version"
  gcc --version
  echo "kvm kernel module"
  lsmod | grep kvm
  dnf repolist | grep rpmfusion
fi
