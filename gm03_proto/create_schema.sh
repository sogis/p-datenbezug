#!/bin/bash

java -jar ~/tools/ili2pg-4.3.2/ili2pg-4.3.2.jar \
--dbdatabase postgres --dbusr postgres --dbpwd postgres \
--schemaimport --models GM03_2Core \
$(pwd)/GM03_2.ili



