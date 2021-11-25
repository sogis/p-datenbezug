# Beschlüsse

|Betreff|Komponenten|Beschluss|Datum|
|---|---|---|---|
|Geschützte Attribute|SIMI|Die Ansätze Maskierung / Annotierung im Modell sind in der Umsetzung zu kompliziert. Darum wird Vererbung verwendet. Für jede Datenbereitstellung mit geschützten Attributen wird ein "public" Datenmodell erstellt. Das "private" Modell erweitert das "public" um die geschützen Attribute.|09.2021|
|Konfigurationsformat Datensuche|Datensuche, sql2json|Als Format für die Konfig-Datei wird YAML verwendet|18.11.2021|
|Absolute / Relative Pfade|Datensuche|Relative Pfade. Damit auch klare Trennung nach Environments möglich.|18.11.2021|
|Regionen (Nachführungs- und Bezugseinheiten)|Alle|Die Regionen werden als GeoJson im SIMI geführt und als einzelne Konfigurationsdateien mittels Volume-Mount der Datensuche "bekannt gemacht".|18.11.2021|
|Ueberthema Nutzungsplanung|Alle|Ist in der Ablage aufgeteilt auf die einzelnen Datenbereitstellungen gemäss Nachführung (Nutzungsplanung kommunal, Nutzungsplanung kantonal, Gewässerschutz, ...). In der Datensuche wird mittels Stichwort "Nutzungsplanung" dafür gesorgt, dass alle für die Nutzungsplanung relevanten Datenbereitstellungen von der Suche gefunden werden.|22.11.2021|

# Fragen

|Betreff|Komponenten|Frage|Antwort|
|---|---|---|---|
|AV dm01 CH|Alle|Von den Nachführungsgeometern wird "dm01 SO" bereitgestelt (= Editmodell). Wie und wo passt das rein?||
|Regionenabbildung in der Ablage|Alle|Als Datei-Präfix oder Unterordner?|Als Datei-Präfix.|
|Raster Zeitreihen|Alle ausser Publisher|ch.so.agi.orthofoto mit Ordner /aktuell und /hist oder ch.so.agi.orthofoto_2019?||
|DXF für die AV|Alle|AV sowohl in generischem dxf wie spezifischem (geobau)?||


