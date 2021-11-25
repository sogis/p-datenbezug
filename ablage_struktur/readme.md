# Datei- und Ordnerstruktur der Ablage

## Gängiger Fall: Zwei Modelle, keine Regionen

Publikation in den beiden Datenbereitstelungen ch.so.avt.verkehrszaehlstellen und ch.so.avt.verkehrszaehlstellen.edit

> data/
> * ch.so.avt.verkehrszaehlstellen/
>    * aktuell/
>      * dxf.zip
>      * gpkg.zip
>      * shp.zip
>      * xtf.zip
>      * meta/
>        * SO_AVT_Verkehrszaehlstellen_Publikation_20190206.ili
>        * publishdate.json      
>   * hist/
>     * 2021.04.12/ -- intern identisch aufgebaut wie Ordner aktuell/
>     * 2021.03.14/
>     * ...
> * ch.so.avt.verkehrszaehlstellen.edit/
>   * aktuell/
>       * xtf.zip
>       * meta/
>         * SO_AVT_Verkehrszaehlstellen_20190206.ili  
>         * publishdate.json      
>   * hist/
>     * ...

## Abbildung von Regionen-Einteilungen

Die Regionen werden als Präfix der Dateien abgebildet. Die Ordnerstruktur bleibt gleich. Aufbau Dateiname:   
\[Regionen-Identifier\].\[Format-Identifier\].zip

Beispiel AV (Regionen-Identifier ist die BFS-NR):

> data/
> * ch.so.agi.av.mopublic/
>   * aktuell/
>     * 2501.dxf.zip
>     * 2501.gpkg.zip
>     * 2501.shp.zip
>     * 2501.xtf.zip
>     * 2502.dxf.zip
>     * 2502.gpkg.zip
>     * 2502.shp.zip
>     * 2502.xtf.zip
>     * ...
>     * meta/
>       * ...    
>   * hist/
>     * ...

Bei Rastern mit Kacheln:

> data/
> * ch.so.agi.orthofoto/
>   * aktuell/
>     * 1_1.tif
>     * 1_2.tif
>     * 1_3.tif
>     * 2_1.tif
>     * 2_2.tif
>     * ...
>     * meta/
>       * ...    
>   * hist/
>     * ...
