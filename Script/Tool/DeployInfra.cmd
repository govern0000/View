@echo off

echo Deploy Infra

set AvalonOutFold=.\Out\net8.0
set AvalonInfraOutFold=%AvalonOutFold%\Infra
set InfraDeployFold=..\Class\Out\InfraDeploy

mkdir %AvalonInfraOutFold% 1>NUL 2>NUL

xcopy /S /E /Y "%InfraDeployFold%" "%AvalonInfraOutFold%" 1>NUL 2>NUL