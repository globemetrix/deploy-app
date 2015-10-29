#!/bin/bash

cat $DEP_PRI_KEY > ~/.ssh/id_rsa
cat $DEP_PUB_KEY > ~/.ssh/id_rsa.pub
cd /app && git clone git@bitbucket.org:globemetrix/wp-app.git

/./run.sh
