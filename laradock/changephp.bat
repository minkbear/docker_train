@echo OFF
SETLOCAL DisableDelayedExpansion                                            

::docker-compose stop

:: ### Build fpm and cli for new version                       
docker-compose build --no-cache php-fpm
docker-compose build --no-cache workspace

:: ### Restart Container to use new version of php
docker-compose down
CALL start.bat
CALL fixcomposer.bat