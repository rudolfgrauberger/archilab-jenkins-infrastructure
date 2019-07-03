# ArchiLab Jenkins-Infrastruktur
Dieses Repository beinhaltet die alles was für die Installation, Einrichtung und den Betrieb des Jenkin-Servers benötigt wird.


ArchiLab-Image bauen

``` posh
docker build -t archilab-jenkins .
```

Hinweis: Wenn es Fehler beim Herunterladen/Installieren der Plugin gibt, dann bitte in der plugins.txt die "\r\n" durch "\n" ersetzen!!!


ArchiLab-Jenkins starten
``` posh
docker run -p 8080:8080 --env-file env.list archilab-jenkins
```

Die `env.list` ist eine Datei, die die benötigten Umgebungsvariablen in der Form `VARNAME=wert` beinhaltet.

Zugriff auf Container
``` posh
docker exec -it <container bash
```