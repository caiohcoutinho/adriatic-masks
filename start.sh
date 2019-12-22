#!/bin/bash

#sudo service apache2 stop;

export PGUSER=vam5;
export PGHOST=localhost;
export PGPASSWORD=vam5;
export PGDATABASE=vam5;
export PGPORT=5432;
node server.js & npm start;