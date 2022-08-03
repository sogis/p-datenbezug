# Datenbezug

Umfasst die Komponenten und Schnittstellen, mit welchen die öffentlichen Geodaten dateibasiert bereitgestellt werden.

## Komponenten

![Uebersichtsdiagramm](res/uebersicht.png)


* **SIMI:** 
  * Erweiterung von Metamodell und Masken mit den Tabellen für die Themen-Verwaltung.
  * Einbinden des Jar "metaBean2File" zwecks Generieren der Detailbeschreibung pro Tabelle für die Schnittstelle zum Publisher.
* **Pipeline:**   
Erstellen einer neuen Pipeline, welche jeweils frühmorgens nach Zeitplan ausgeführt wird.   
Inhalt:
  * Aktualisierung Datensuche:   
  Export der Konfig-Datei mittels Kommandozeilentool "Meta-Exporter". Mit Datei und "Base-Image" neues "Runtime-Image" der Datensuche brennen und deployen.
  * Aktualisierung Geocat:   
  Export der ISO-CH XML-Dateien mittels "Meta-Exporter". Upload via sftp auf Geocat.
* **Datensuche:**   
Webapplikation zum Suchen und Herunterladen der Geodaten mit einfach verständlicher Benutzeroberfläche.   
Wird von den Portalen verlinkt und bietet darum "Direktlinks" auf eine Themen-Bereitstellung an. Bsp MO-Public: "https://data.geo.so.ch/ch.so.av.mopublic"
* **Publisher:**   
GRETL-Task, welcher für Vektordaten die aktuellsten Geodaten-Dateien bereitstellt und das Archiv der vorherigen Zeitstände pflegt. Liest und schreibt Metainformationen mittels Schnittstelle zu SIMI.
* **Datenablage:**   
Strukturierte und für fortgeschrittene Benutzer selbsterklärende Datenablage. Benutzer und automatisierte Datenprozesse beziehen die Datendateien direkt via HTTPS und anonymem FTP.

## Technische Anwendungsfälle

Abhängig von Geodatentyp, -Quelle und Regioneneinteilung werden die Daten automatisch oder manuell bereitgestellt:

|Typ|Quelle|Regionen|Updating|Beispiel|
|---|---|---|---|---|
|Vec|DB|Nein|auto|Gewässerschutz|
|Vec|Datei|Nein|auto|KBS|
|Vec|Datei|Ja|auto|AV|
|Vec|DB|Ja|manu|Höhenlinien (Lidar)|
|Non-Vec|Datei|Nein|manu|Hochwasserschutz Emme|
|Non-Vec|Datei|Ja|manu|DTM (Lidar)|

## Definition wichtiger Begriffe für das Verständnis des Datenbezuges

### Nachführung

Prozess, in welchem n Datenthemen nachgeführt werden. Typische prozessorientiert ist die kommunale Nutzungsplanung und die Amtliche Vermessung. Diese beinhalten jeweils mehrere Datenthemen.

Zentrales Merkmal der Nachführung ist der Zeitpunkt des Abschlusses einer Nachführung. Als ungefähre Näherung dieses Zeitpunktes wird im Datenbezug der Ausführungszeitpunkt des Publikationsjobs verwendet.

### Datenbereitstellung

Bereitstellung der aus einer Nachführung resultierenden Daten für einen bestimmten Verwendungszweck. Häufig vorkommende Verwendungszwecke:

* **Daten-Nachführung**:   
Die Daten sind für die Nachführung redundanzfrei relational aufgebaut. "Liegen im Edit-Modell vor".
* **Daten-Nutzung**:   
Die Daten sind für die einfache Nutzung strukturiert. "Liegen im Pub-Modell vor".

Die Datenbereitstellung ist die zentrale Klasse im Datenbezug. 

**Beispiel Verkehrszählstellen**

|Datenbereitstellung|Bemerkungen|
|---|---|
|ch.so.avt.verkehrszaelstellen|Bereitstellung für die Nutzung (= Pub-Modell)|
|ch.so.avt.verkehrszaelstellen.relational|Bereitstellung für die Nachführung (= Edit-Modell)|

Für die Verkehrszählstellen umfasst der Nachführungsprozess "nur" ein Datenthema

**Beispiel Nutzungsplanung mit Nachführung kantonal und kommunal**

|Nachführung|Datenbereitstellung|Bemerkungen|
|---|---|---|
|Kantonal|ch.so.arp.nutzungsplanung.kantonal|Bereitstellung für die Nutzung (= Pub-Modell)|
|Kantonal|ch.so.arp.nutzungsplanung.kantonal.relational|Bereitstellung für die Nachführung (= Edit-Modell)|
|Kommunal|ch.so.arp.nutzungsplanung.kommunal|Bereitstellung für die Nutzung (= Pub-Modell)|
|Kommunal|ch.so.arp.nutzungsplanung.kommunal.relational|Bereitstellung für die Nachführung (= Edit-Modell)|

## Links

* [Datei- und Ordnerstruktur der Ablage](ablage_struktur/readme.md)
* [Webapplikation Datensuche](datensuche/readme.md)
* [Publisher-Task (GRETL)](gretl_publisher/readme.md)


