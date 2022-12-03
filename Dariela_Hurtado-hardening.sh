#!/bin/bash
sistema=$(hostnamectl)
if echo "$sistema" | grep 'CentOS';
then
        echo "La distribución es CentOS"
        os=("CentOS")
elif echo "$sistema" | grep 'Ubuntu';
then
        echo "La distribución es Ubuntu"
        os=("Ubuntu")
fi


if [[ $os == "CentOS" ]];
then
  av=$(yum list installed)
  if echo "$av" | grep clamav;
  then
    sudo yum remove install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd
  fi
    sudo yum -y install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd

  if echo "$av" | grep epel-release;
  then
     sudo yum remove install epel-release
  fi
     sudo yum -y install epel-release
     sudo yum -y update

elif [[ $os == "Ubuntu" ]];
then
  av=$(apt list --installed)
  if echo "$av" | grep clamav;
  then
    sudo apt-get remove clamav clamav-daemon clamav-base/bionic-updates libclamav9/bionic-updates
  fi
    sudo apt-get install clamav clamav-daemon clamav-base/bionic-updates libclamav9/bionic-updates
    sudo apt upgrade
fi
echo "Tareas completadas!"
