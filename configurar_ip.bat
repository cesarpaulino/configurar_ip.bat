@echo off
@echo off
Title Configurando la IP
@echo off
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::            Ing. Cesar Paulino                  ::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::                                                            ::
@echo ::       Configurando la IP, puerta de enlace y DNS           ::
@echo ::  comando basico para cambiar la dirección IP, mascara      ::
@echo ::  de red, puerta de elnace y DNS primarios y secunbdarios   ::
@echo ::             $author Ing._Cesar_Paulino.dll                 ::
@echo ::                                                            ::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
@pause
@echo off
:: Configuración de la interface
set INTERFACE_NAME=Ethernet
:: Configuración IP
set IP_ADDRESS=192.168.1.100
:: Configuración Mascara
set SUBNET_MASK=255.255.255.0
:: Configuración Puerta de enlace
set GATEWAY=192.168.1.1
:: Configuración DNS primario
set PRIMARY_DNS=8.8.8.8
:: Configuración DNS secundario
set SECONDARY_DNS=8.8.4.4

netsh interface ip set address name="%INTERFACE_NAME%" static %IP_ADDRESS% %SUBNET_MASK% %GATEWAY% 1
netsh interface ip set dns name="%INTERFACE_NAME%" static %PRIMARY_DNS%
netsh interface ip add dns name="%INTERFACE_NAME%" addr=%SECONDARY_DNS% index=2

echo Configuración completada.
pause
