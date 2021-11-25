# Datei- und Ordnerstruktur der Ablage

## Gängiger Fall: Zwei Modelle, keine Regionen

Publikation in den beiden Datenbereitstelungen ch.so.avt.verkehrszaehlstellen und ch.so.avt.verkehrszaehlstellen.edit

Namenskonvention für die Dateien: \[Datenbereitstellungs-Identifier\].\[Format-Identifier\].zip

> data/
> * ch.so.avt.verkehrszaehlstellen/
>    * aktuell/
>      * ch.so.avt.verkehrszaehlstellen.dxf.zip
>      * ch.so.avt.verkehrszaehlstellen.gpkg.zip
>      * ch.so.avt.verkehrszaehlstellen.shp.zip
>      * ch.so.avt.verkehrszaehlstellen.xtf.zip
>      * meta/
>        * SO_AVT_Verkehrszaehlstellen_Publikation_20190206.ili
>        * publishdate.json      
>   * hist/
>     * 2021.04.12/ -- intern identisch aufgebaut wie Ordner aktuell/
>     * 2021.03.14/
>     * ...
> * ch.so.avt.verkehrszaehlstellen.edit/
>   * aktuell/
>       * ch.so.avt.verkehrszaehlstellen.edit.xtf.zip
>       * meta/
>         * SO_AVT_Verkehrszaehlstellen_20190206.ili  
>         * publishdate.json      
>   * hist/
>     * ...

## Abbildung von Regionen-Einteilungen

Die Regionen werden als Präfix der Dateien abgebildet. Die Ordnerstruktur bleibt gleich. Aufbau Dateiname:   
\[Regionen-Identifier\].\[Datenbereitstellungs-Identifier\].\[Format-Identifier\].zip

Beispiel AV (Regionen-Identifier ist die BFS-NR):

> data/
> * ch.so.agi.av.mopublic/
>   * aktuell/
>     * 2501.ch.so.agi.av.mopublic.dxf.zip
>     * 2501.ch.so.agi.av.mopublic.gpkg.zip
>     * 2501.ch.so.agi.av.mopublic.shp.zip
>     * 2501.ch.so.agi.av.mopublic.xtf.zip
>     * 2502.ch.so.agi.av.mopublic.dxf.zip
>     * 2502.ch.so.agi.av.mopublic.gpkg.zip
>     * 2502.ch.so.agi.av.mopublic.shp.zip
>     * 2502.ch.so.agi.av.mopublic.xtf.zip
>     * ...
>     * meta/
>       * ...    
>   * hist/
>     * ...

Bei Rastern mit Kacheln:

> data/
> * ch.so.agi.orthofoto/
>   * aktuell/
>     * 1_1.ch.so.agi.orthofoto.tif
>     * 1_2.ch.so.agi.orthofoto.tif
>     * 1_3.ch.so.agi.orthofoto.tif
>     * 2_1.ch.so.agi.orthofoto.tif
>     * 2_2.ch.so.agi.orthofoto.tif
>     * ...
>     * meta/
>       * ...    
>   * hist/
>     * ...
