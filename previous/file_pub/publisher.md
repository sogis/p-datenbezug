## Konfiguration

Im build.gradle wird der Name des zu publizierenden Themas konfiguriert:

```groovy 
themeIdentifier = 'ch.so.arp.nutzungsplanung'
```

Alle weiteren Konfigurationen sind in einer json Konfigurationsdatei enthalten:

```json
{
  "db-connections" : {
    "edit" : {
      "_comment" : "Die Werte (dbUriEdit) bezeichnen die Namen der Parameter des Gradle-Projektes, welche die effektiven Werte enthalten",
      "uri" : "dbUriEdit - Wert bezeichnet den Namen des Parameters des Gradle-Projektes, welcher den effektiven Wert enthält",
      "user" : "dbUserEdit",
      "pass" : "dbPwdEdit"
    },
    "pub" : {
      "uri" : "dbUriPub",
      "user" : "dbUserPub",
      "pass" : "dbPwdPub"
    }
  },
  "ftps-connections" : {
    "output" : {
      "url" : "filePubUrl - Wert bezeichnet den Namen des Parameters des Gradle-Projektes, welcher den effektiven Wert enthält",
      "user" : "filePubUser",
      "pass" : "filePubPass"
    },
    "input" : {
      "url" : "fileEditUrl",
      "user" : "fileEditUser",
      "pass" : "fileEditPass"
    }
  },
  "globals" : {
    "midnight-shift" : "5 - Anzahl Stunden nach Mitternacht, welche zum vorherigen Tag gezählt werden"
  },
  "themes" : {
    "ch.so.arp.nutzungsplanung" : {
      "sources" : [
        {
          "editData" : true,
          "source_schema" : "arp_nutzungsplanung",
          "output_suffix" : "kantonal"
        },
        {
          "editData" : true,
          "source_path" : "ch.so.arp.nutzungsplanung/kommunal", 
          "output_suffix" : "kommunal"
        },
        {
          "editData" : false,
          "source_schema" : "arp_nutzungsplanung_pub",
          "output_suffix" : null
        }
      ],
      "grooming" : [
        {
          "from": "null - Anfangsalter in Wochen für die Regel",
          "to" : "1 - Endalter in Wochen für die Regel (exklusive)",
          "keep" : "nightly - Periode, in welcher ein Archivstand erhalten werden soll"  
        },
        {
          "from": 1,
          "to" : 4,
          "keep" : "weekly"
        },
        {
          "from": 4,
          "to" : 52,
          "keep" : "monthly"
        },
        {
          "from": 52,
          "to" : null,
          "keep" : "yearly"
        }
      ]
    },
    "ch.so.agi.vermessung" : ["..."]
  }
}
```