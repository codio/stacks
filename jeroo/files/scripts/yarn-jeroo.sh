#!/usr/bin/env bash

cd /home/codio/jeroo/jeroo

node --max_old_space_size=1024 node_modules/@angular/cli/bin/ng build --prod
