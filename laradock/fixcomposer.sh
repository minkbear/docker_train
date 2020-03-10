#!/bin/bash                                  
composer self-update
composer clear-cache
composer config -g secure-http false
composer config -g repositories.packagist composer https://packagist.org/