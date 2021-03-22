#!/bin/bash

#sudo service apache2 stop;

# export PGUSER=wltzyxhf;
# export PGHOST=rajje.db.elephantsql.com;
# export PGPASSWORD=zKnRa9cOjBYbb2gxTDGpuWewrge6nMjh;
# export PGDATABASE=wltzyxhf;
# export PGPORT=5432;

export PGUSER=postgres;
export PGHOST=localhost;
export PGPASSWORD=postgres;
export PGDATABASE=postgres;
export PGPORT=5432;

node server.js;