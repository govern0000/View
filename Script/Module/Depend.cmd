@echo off

pushd ..\MathModule
call Script\Module\Make
call Script\Module\Library
popd