# Beschlüsse

|Betreff|Komponenten|Beschluss|Datum|
|---|---|---|---|
|Geschützte Attribute|SIMI|Die Ansätze Maskierung / Annotierung im Modell sind in der Umsetzung zu kompliziert. Darum wird Vererbung verwendet. Für jedes Thema mit geschützten Attributen wird ein "public" Datenmodell erstellt. Das "private" Modell erweitert das "public" um die geschützen Attribute.|09.2021|
|Konfigurationsformat Datensuche|Datensuche, sql2json|Als Format für die Konfig-Datei wird YAML verwendet|18.11.2021|
|Absolute / Relative Pfade|Datensuche|Relative Pfade. Damit auch klare Trennung nach Environments möglich.|18.11.2021|
|Subunits (Nachführungs- und Bezugseinheiten)|Alle|Die Subunits werden als GeoJson im SIMI geführt und als einzelne Konfigurationsdateien mittels Volume-Mount der Datensuche "bekannt gemacht".|18.11.2021|
|Ueberthema Nutzungsplanung|Alle|Ist in der Ablage aufgeteilt auf die einzelnen Themen gemäss Nachführung (Nutzungsplanung kommunal, Nutzungsplanung kantonal, Gewässerschutz, ...). In der Datensuche wird mittels Stichwort "Nutzungsplanung" dafür gesorgt, dass alle für die Nutzungsplanung relevanten Themen von der Suche gefunden werden.|22.11.2021|

# Fragen

|Betreff|Komponenten|Frage|Antwort|
|---|---|---|---|
|AV dm01 CH|Alle|Von den Nachführungsgeometern wird "dm01 SO" bereitgestelt (= Editmodell). Ist "dm01 CH" in Scope? Wie und wo passt das rein?||

