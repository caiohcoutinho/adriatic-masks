#!/bin/bash

#sudo service apache2 stop;

# export PGUSER=wltzyxhf;
# export PGHOST=rajje.db.elephantsql.com;
# export PGPASSWORD=zKnRa9cOjBYbb2gxTDGpuWewrge6nMjh;
# export PGDATABASE=wltzyxhf;
# export PGPORT=5432;

export PGUSER=vam5;
export PGHOST=localhost;
export PGPASSWORD=vam5;
export PGDATABASE=vam5;
export PGPORT=5432;

node server.js;