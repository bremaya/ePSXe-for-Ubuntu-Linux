#!/bin/bash
#Uninstaller created by Bremaya <bremaya@gmail.com> https://github.com/bremaya
if apt-cache show epsxe 2>/dev/null|grep -q '^Package: epsxe$'
  then
   sudo dpkg -P epsxe
fi
rm -rfv /tmp/ePSXe
ARC=$(uname -m)
if [ $ARC = x86_64 ]
  then
#ePSXe Libs x86_64 Remove
   sudo dpkg -P libssl1.0.0 libssl1.0.0:i386 libncurses5 libncurses5:i386 libsdl1.2debian libsdl1.2debian:i386 libsdl-ttf2.0-0 libsdl-ttf2.0-0:i386 libgssapi3-heimdal libgssapi3-heimdal:i386 libgtk-3-0 libgtk-3-0:i386
   sudo rm -fv /usr/lib/x86_64-linux-gnu/libcurl.so.3 /usr/lib/i386-linux-gnu/libcurl.so.3 /usr/lib/x86_64-linux-gnu/libcurl.so.4.5.0 /usr/lib/i386-linux-gnu/libcurl.so.4.5.0 /usr/lib/x86_64-linux-gnu/liblber-2.4.so.2 /usr/lib/i386-linux-gnu/liblber-2.4.so.2 /usr/lib/x86_64-linux-gnu/liblber-2.4.so.2.10.12 /usr/lib/i386-linux-gnu/liblber-2.4.so.2.10.12 /usr/lib/x86_64-linux-gnu/libldap-2.4.so.2 /usr/lib/i386-linux-gnu/libldap-2.4.so.2 /usr/lib/x86_64-linux-gnu/libldap_r-2.4.so.2 /usr/lib/i386-linux-gnu/libldap_r-2.4.so.2 /usr/lib/x86_64-linux-gnu/libldap_r-2.4.so.2.10.12 /usr/lib/i386-linux-gnu/libldap_r-2.4.so.2.10.12
#ePSXe x86_64 Remove
   sudo rm -fv /usr/bin/epsxe /usr/bin/epsxe_x86 /usr/share/icons/epsxe.svg /usr/share/applications/epsxe.desktop
   sudo rm -rfv /usr/share/doc/epsxe 
   read -n 1 -s -r -p "Uninstallation successfull! Press any key to exit...
"
  else
   #ePSXe Libs x86 Remove
   sudo dpkg -P libssl1.0.0 libncurses5 libsdl1.2debian libsdl-ttf2.0-0 libgssapi3-heimdal libgtk-3-0
   sudo rm -fv /usr/lib/i386-linux-gnu/libcurl.so.3 /usr/lib/i386-linux-gnu/libcurl.so.4.5.0 /usr/lib/i386-linux-gnu/liblber-2.4.so.2 /usr/lib/i386-linux-gnu/liblber-2.4.so.2.10.12 /usr/lib/i386-linux-gnu/libldap-2.4.so.2 /usr/lib/i386-linux-gnu/libldap_r-2.4.so.2 /usr/lib/i386-linux-gnu/libldap_r-2.4.so.2.10.12
#ePSXe x86_64 Remove
   sudo rm -fv /usr/bin/epsxe /usr/share/icons/epsxe.svg /usr/share/applications/epsxe.desktop
   sudo rm -rfv /usr/share/doc/epsxe 
   read -n 1 -s -r -p "Uninstallation successfull! Press any key to exit...
"
fi
