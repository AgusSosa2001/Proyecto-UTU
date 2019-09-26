    @echo off     
	color b
	set contador=0
	set tiempo=60
	cls
	:error
    echo ::::::::::::
	echo ::REGISTRO::
	echo ::::::::::::
	set /p rusuario= Usuario:
	set /p rcontra= Contrasenia:
	timeout 1 /nobreak > nul
	cls
	echo :::::::::::::::::::::::::::::::::::
	echo Que tipo de usuario va a registrar?
	echo :::::::::::::::::::::::::::::::::::                                  
	echo 1 - Administrador
	echo 2 - Agente                        
	echo 3 - Cliente
	set /p opcion2=

::Administradores
	if %opcion2% equ 1 (
	cd proyecto
	cd Usuarios
	cd Administradores
	if not exist %rusuario% (
	md %rusuario%
	cd %rusuario%
	md %rusuario%
    md %rcontra%
	) else (
	color c
	cls
	echo El nombre de usuario ya existe
	echo Intente nuevamente
	if %contador% lss 4 (
	set /a contador=%contador%+1
	goto error
	) else (
	echo Has excedido los 5 intentos, espera %tiempo% segundos para continuar
	set /a tiempo=%tiempo%+60
	timeout %tiempo% /nobreak
	goto error
	)
	)
	)
	
::Agentes
	if %opcion2% equ 2 (
	cd proyecto
	cd Usuarios
	cd Agentes
	if not exist %rusuario% (
	md %rusuario%
	cd %rusuario%
	md %rusuario%
    md %rcontra%
	) else (
	color c
	cls
	echo El nombre de usuario ya existe
	echo Intente nuevamente
	if %contador% lss 4 (
	set /a contador=%contador%+1
	goto error
	) else (
	echo Has excedido los 5 intentos, espera %tiempo% segundos para continuar
	set /a tiempo=%tiempo%+60
	timeout %tiempo% /nobreak
	goto error
	)
	)
	)
	
::Clientes
	if %opcion2% equ 3 (
	cd proyecto
	cd Usuarios
	cd Clientes
	if not exist %rusuario% (
	md %rusuario%
	cd %rusuario%
	md %rusuario%
    md %rcontra%
	) else (
	color c
	cls
	echo El nombre de usuario ya existe
	echo Intente nuevamente
	if %contador% lss 4 (
	set /a contador=%contador%+1
	goto error
	) else (
	echo Has excedido los 5 intentos, espera %tiempo% segundos para continuar
	set /a tiempo=%tiempo%+60
	timeout %tiempo% /nobreak
	goto error
	)
	)
	)
	
	if %opcion2% neq 1 (
	if %opcion2% neq 2 (
	if %opcion2% neq 3 (
	cls
	color c
	echo Opcion invalida
	timeout 2 /nobreak > nul
	goto :error
	)
	)
	)
	
	:fin
	cd ..
	cd ..
	cd ..
	cd ..
	cls
	color a
	echo Espera un momento
	timeout 3 /nobreak
	cls
	call proyecto.bat