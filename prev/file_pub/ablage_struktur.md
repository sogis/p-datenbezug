# Datei- und Ordnerstruktur der Publikation

* ch.so.agi.vermessung/
  * \[aktuell/\]
    * \[data/\]
      * \[kt_so/\]
        * ch.so.agi.vermessung.dxf.zip
        * ch.so.agi.vermessung.gpkg
        * ch.so.agi.vermessung.shp.zip
        * ch.so.agi.vermessung.xtf
      * meta/
        * SO_AGI_MOpublic_20201009.ili  
        * publishdate.json      
    * edit/
        * aedermannsdorf_2421/
          * ch.so.agi.vermessung.edit__aedermannsdorf_2421.xtf
        * aeschi_2511/
          * ...
        * ...
      * meta/
        * DM.01-AV-CH_LV95_24f_ili1.ili
        * publishdate.json
  * hist/
    * 2021.04.12/
    * 2021.03.14/
    * ...
* ch.so.arp.nutzungsplanung
  * \[aktuell/\]
    * \[data/\] -- Kantonsweise mit Nutzungsformaten --> Analog vermessung/data
    * edit_kommunal -- Gemeindeweise --> Analog wie vermessung/edit
    * edit_kantonal -- Kantonsweise ohne Nutzungsformate (Geodaten ausschliesslich als ch.so.agi.vermessung.edit_kantonal.xtf)
  * hist/
    * 2021.06.03/
* ch.so.agi.lidar_2019
  * \[aktuell/\]
    * \[data__dsm_relief/\]
    * \[data__ndsm_relief/\]
    * \[data__ndsm_vegetation/\]
    * \[data__hoehenlinien/\]
    * ...


Fragen / Bemerkungen:
* Modell komplett mit allen seinen Abhängigkeiten ablegen?
* Bei den gebietsweise nachgeführten Daten (Nutzungsplanung, Vermessung, ...) 
  * Ein Zeitstand enthält alle Gebiete, obwohl viele nicht verändert wurden...
* Das publishdate.json enthält das Datum des Ausführens des Publikations-Jobs
* Die in eckigen Klammern notierten Ordner könnten weggelassen werden. Meine Meinung: Belassen. Stören nicht gross, aber helfen beim Verständnis der Ablage-Struktur.
* Wie legen wir die wiederkehrenden Raster (Ortho / Lidar) ab? Jeder Zeitstand als eigener Datensatz oder als Zeitreihe? Bei Änderung auf Zeitreihe: Aufwand / Ertrag?
* Bei den Lidars haben wir viele publizierte Produkte von je einem Edukt. Wie in der obigen Ordnerstruktur geschrieben abbilden?

## Datei- und Ordnerstruktur der Input-Daten (Annahme)

* ch.so.arp.nutzungsplanung
  * aktuell/
    * aedermannsdorf_2421/
      * *.xtf
    * aeschi_2511/
    * ...

Der Publisher kopiert die Gebietseinteilungs-Ordner inklusive aller enthaltenen XTF.

