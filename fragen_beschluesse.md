# Beschlüsse

|Betreff|Komponenten|Beschluss|Datum|
|---|---|---|---|
|Geschützte Attribute|SIMI|Die Ansätze Maskierung / Annotierung im Modell sind in der Umsetzung zu kompliziert. Darum wird Vererbung verwendet. Für jede Datenbereitstellung mit geschützten Attributen wird ein "public" Datenmodell erstellt. Das "private" Modell erweitert das "public" um die geschützen Attribute.|09.2021|
|Konfigurationsformat Datensuche|Datensuche, sql2json|Als Format für die Konfig-Datei wird YAML verwendet|18.11.2021|
|Absolute / Relative Pfade|Datensuche|Relative Pfade. Damit auch klare Trennung nach Environments möglich.|18.11.2021|
|Regionen (Nachführungs- und Bezugseinheiten)|Alle|Die Regionen werden als GeoJson im SIMI geführt und als einzelne Konfigurationsdateien mittels Volume-Mount der Datensuche "bekannt gemacht". Bedingt, dass in der Pipeline sql2json für jedes Datenthema mit Subunits aufgerufen wird.|18.11.2021|
|Ueberthema Nutzungsplanung|Alle|Ist in der Ablage aufgeteilt auf die einzelnen Datenbereitstellungen gemäss Nachführung (Nutzungsplanung kommunal, Nutzungsplanung kantonal, Gewässerschutz, ...). In der Datensuche wird mittels Stichwort "Nutzungsplanung" dafür gesorgt, dass alle für die Nutzungsplanung relevanten Datenbereitstellungen von der Suche gefunden werden.|22.11.2021|
|Dateiname|Alle|In die Dateinamen wird der Identifier der Datenbereitstellung mit aufgenommen, damit beim HTTP-Download im Downloadordner einfach die Übersicht gewahrt werden kann|25.11.2021|
|DM01SO nach DM01CH|Alle|DM01CH ist für den Publisher eine normale File-Source. Die *.itf werden vom umgebenden Job mit dem bestehenden Task generiert.|09.12.2021|
|Abbildung der Regionen in der Ablage|alle|Regionen werden in der Ablage als Präfix in die Datei codiert|25.11.2021|
|Raster Zeitreihen in /hist? Sprich ch.so..orthofoto oder ch.so..orthophoto_2019|Alle ausser Publisher|||
|Zwei oder ein dxf für die AV?|Publisher|Ein DXF. Der Publisher generiert für die AV das dxf geobau anstatt das generische dxf.|08.12.2021|
|Bereitstellung Beschreibungs-PDF|Alle|Ein pdf wird noch nicht bereitgestellt|08.12.2021|
|Archivstände greifbar machen / zeigen|Datensuche|Nein. Einzig an geeigneter Stelle Hinweis auf das Vorhandensein von historischen Ständen und dann schauen, ob diesbezüglich viele Anfragen reinkommen.|9.12.2021|
|Verbindugnsparameter für HTTP und FTP anzeigen?|Datensuche|HTTP ja (auf Root-Verzeichnis der Datenbereitstellung. FTP nein, da Nutzung im Browser nicht möglich. FTP-Verweis in Geoportal unterbringen|09.12.2021|
|Bereitstellung TOML|Publisher|Muss von Anfang an bereitgestellt werden - zusammen mit dem Validierungs-Log in allen *.zip der Daten|16.12.2021|
|KGEOIG Einordnung der "kann"-Formulierung bzgl. Datenbereitstellung der übrigen Geodaten|Keine|Alle Geodaten werden gleich behandelt.|16.12.2021|
|Refactoring  / Autotesting im Hinblick auf prduktiven Einsatz notwendig?|Datensuche|Refactoring nicht notwendig / Autotests kommen noch dazu|16.12.2021|
|Art des Verweises auf externe Bezugsquellen|Datensuche|GDI: Verweis auf alle publizierten öffentlichen Datenprodukte im WMS (DSV, FL, LG), jeweils mit Link auf dem WGC. Geodienste: Verweis auf die Landing-Page.|16.12.2021|
|Welche Teile der Config sind ENV?|Datensuche|Beispielsweise die Hostnamen für WMS, WGC, Datenablage|16.12.2021|
|Pendente Datenthemen|Datensuche|Werden nicht gelistet. In zeitnahe Umsetzung der Datenthemen investieren.|16.12.2021|
