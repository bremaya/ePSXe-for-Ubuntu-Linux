#!/bin/bash
#Script created by Bremaya <bremaya@gmail.com> https://github.com/bremaya
if apt-cache show epsxe 2>/dev/null|grep -q '^Package: epsxe$'
  then
   sudo apt remove -y epsxe
fi
rm -rfv /tmp/ePSXe ; mkdir /tmp/ePSXe ; cd /tmp/ePSXe/
curl -L -o ePSXe_Linux_Full_Package_by_bremaya.tar.xz https://github.com/bremaya/ePSXe-for-Ubuntu-Linux/releases/download/ePSXeForUbuntu/ePSXe_Linux_Full_Package_by_bremaya.tar.xz
tar -xvf debs.tar.xz ; tar -xvf libs.tar.xz ; tar -xvf ePSXe_linux.tar.xz
ARC=$(uname -m)
if [ $ARC = x86_64 ]
  then
   sudo dpkg --add-architecture i386 ; sudo apt update
#ePSXe Libs x86_64 Install
   sudo apt install -y libncurses5 libncurses5:i386 libsdl1.2debian libsdl1.2debian:i386 libsdl-ttf2.0-0 libsdl-ttf2.0-0:i386 libgssapi3-heimdal libgssapi3-heimdal:i386 libgtk-3-0 libgtk-3-0:i386
   sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.11_amd64.deb ; sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.11_i386.deb
   sudo cp -rfv usr /
#ePSXe x86_64 Install   
   sudo cp -fv epsxe_x64 /usr/bin/epsxe ; sudo cp -fv epsxe /usr/bin/epsxe_x86 ; sudo cp -fv epsxe.svg /usr/share/icons/ ; sudo cp -fv epsxe.desktop /usr/share/applications/
   sudo cp -rfv docs /usr/share/doc
   sudo mv -fv /usr/share/doc/docs /usr/share/doc/epsxe
   sudo rm -rfv /tmp/ePSXe
   read -n 1 -s -r -p "Installation successfull! Press any key to exit..."
   exit
  else
   sudo apt update
#ePSXe Libs x86 Install
   sudo apt install -y libncurses5 libsdl1.2debian libsdl-ttf2.0-0 libgssapi3-heimdal libgtk-3-0
   sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.11_i386.deb
   sudo rm -rfv usr/lib/x86_64-linux-gnu
   sudo cp -rfv usr /
#ePSXe x86 Install
   sudo cp -fv epsxe /usr/bin/epsxe ; sudo cp -fv epsxe.svg /usr/share/icons/ ; sudo cp -fv epsxe.desktop /usr/share/applications/
   sudo cp -rfv docs /usr/share/doc
   sudo mv -fv /usr/share/doc/docs /usr/share/doc/epsxe
   sudo rm -rfv /tmp/ePSXe
   read -n 1 -s -r -p "Installation successfull! Press any key to exit..."
   exit
fi
