#!/bin/sh

rm -f ventoy_efiboot.img.*

cd ISO
mkisofs -R -D -sysid VENTOY -V VENTOY -P "clccv" -p 'https://clccv.com' -o ../ventoy_efiboot.img ./ 
cd ..

xz --check=crc32 ventoy_efiboot.img

rm -f ../INSTALL/ventoy/ventoy_efiboot.img.xz
cp -a ventoy_efiboot.img.xz ../INSTALL/ventoy/

