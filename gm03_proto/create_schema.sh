#!/bin/bash

java -jar ~/tools/ili2pg-4.7.0/ili2pg-4.7.0.jar \
--dbdatabase postgres --dbusr postgres --dbpwd postgres --dbschema gm03 \
--schemaimport --models GM03_2_1Core \
$(pwd)/GM03_2_1.ili



