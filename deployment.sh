#!/bin/bash
ssh blit@45.76.31.228 'bash -s' << EOF
    cd /var/www/blit/blit
    git stash
    git pull origin master
    composer install --no-dev
    npm install --only=production
    php artisan migrate
EOF