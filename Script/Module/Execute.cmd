@echo off

set ModuleFold=..\Class\Out\Class\Module

set InfraFold=C:\Users\aaabb\Package\Class\Out\Class\Infra

pushd %ModuleFold%
set "PATH=%InfraFold%;%PATH%" & set "QT_PLUGIN_PATH=%InfraFold%" & ..\Library\View.Demo-0.00.00
echo Status: %errorlevel%
popd