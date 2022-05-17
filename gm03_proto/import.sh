#!/bin/bash

java -jar ~/tools/ili2pg-4.7.0/ili2pg-4.7.0.jar \
--dbdatabase postgres --dbusr postgres --dbpwd postgres --dbschema gm03 \
--import \
--disableValidation \
$(pwd)/gnbe.xml



