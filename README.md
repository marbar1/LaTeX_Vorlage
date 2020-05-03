
# LaTeX Vorlage für Studienarbeiten oder Ähnliches

## Benötigte Pakete/ Software

### Pygments
Das LaTeX Paket [minted][Minted], welches für Syntaxhighlighting verwendet wird, benötigt Pygments. Pygments ist in Python geschrieben und kann über den Paketinstaller pip installiert werden (es wird mindestens Pythonversion 2.6 benötigt).
```
pip install Pygments
``` 

### Biber
Zum Zitieren wird biblatex verwendet, welches als Backend biber verwendet. Viele TeX Distributionen wie z.B. MikTeX stellen die kompilierte Binary zur Verfügung. Falls das nicht funktioniert, kann man es auch direkt bei [SourceForge][Biber_download] heruntergeladen werden.

**Wichtig!** Es muss auf Kompatibilität geachtet werden (siehe Tabelle „Biber/Biblatex compatibility matrix“  in der [Doku][Biber]).


## Verwendung
Die PDF wird mit LuaLaTeX erzeugt und zur Quellenverwaltung wird Biber/ biblatex verwendet. LuaLaTeX selbst benötigt mehrere Durchläufe bis alle Referenzen aktualisiert sind. Biber wird danach ausgeführt und generiert die notwendigen Dateien für die Zitate und Quellen. Danach muss noch einmal LuaLaTeX ausgeführt werden.
Als TeX Distribution wird MikTeX empfohlen, da bislang nur diese getestet wurde.

MikTeX ersetzt beim Ausführen `%` mit dem Dateinamen.
```
lualatex -interaction=nonstopmode --shell-escape %.tex
lualatex -interaction=nonstopmode --shell-escape %.tex
biber %
lualatex -interaction=nonstopmode --shell-escape %.tex
```
`-interaction=nonstopmode` LaTeX läuft ohne Interaktion vom Benutzer durch, auch wenn es Fehler gibt (außer bei schwerwiegenden).

`--shell-escape`  erlaubt das Aufrufen von externen Programmen (wird für biblatex benötigt).

## Dateien

### Eigenstaendigkeitserklaerung.tex
Die Datei [Eigenstaendigkeitserklaerung.tex][Eigenstaendigkeitserklaerung] enthält den Text für eine Erklärung.
Dieser wurde aus den [Richtlinien für Studienarbeiten][1] der DHBW Karlsruhe entnommen (Stand: Dezember 2019)

Der korrekte Ort muss vor der Abgabe/ dem Ausdrucken eingetragen werden.


### Glossar.tex
In der Datei [Glossar.tex][Glossar] werden die Akronyme, Glossareinträge sowie beides zusammen (siehe [hier][acronym_glossary]) definiert.
Es is jeweils ein Beispiel vorhanden, diese können gelöscht werden.


### Hauptteil.tex
In der Datei [Hauptteil.tex][Hauptteil] wird der Inhalt der Arbeit geschrieben. Falls es eine große Arbeit ist, kann der Text auch auf mehrere Dateien aufgeteilt werden und mit `\include{Dateiname}` inkludiert werden.


### Literatur.bib
In der Datei [Literatur.bib][Literatur] wird die Literatur hinterlegt. Dies wird für Biber benötigt.


### Master.tex
Die Datei [Master.tex][Master] ist das Masterdokument der Arbeit. Hier werden Variablen definiert, die Dokumentenklasse "Studienarbeit" geladen und der Aufbau des Dokuments definiert.

Master.tex muss kompiliert werden, also an LuaLaTeX übergeben werden. Die anderen Datein sind in Master.tex inkludiert.


### Studienarbeit.cls
In der Datei [Studienarbeit.cls][Studienarbeit] werden alle notwendigen Pakete geladen, sowie Makros, die Titelseite, die Kopf- und Fußzeile und die Minted-Umgebung definiert.

Nützlich zu Minted: https://tex.stackexchange.com/questions/489732/how-to-draw-curly-braces-on-minted-and-tcolorbox

<!-- (Links/ Quellen) -->
[Minted]: https://ctan.kako-dev.de/macros/latex/contrib/minted/minted.pdf
[Biber]: https://mirror.informatik.hs-fulda.de/tex-archive/biblio/biber/documentation/biber.pdf
[Biber_download]: https://sourceforge.net/projects/biblatex-biber/
[Eigenstaendigkeitserklaerung]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Eigenstaendigkeitserklaerung.tex
[Glossar]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Glossar.tex
[Hauptteil]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Hauptteil.tex
[Literatur]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Literatur.bib
[Master]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Master.tex
[Studienarbeit]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Studienarbeit.cls
[acronym_glossary]: https://tex.stackexchange.com/questions/8946/how-to-combine-acronym-and-glossary
[1]: https://www.dhbw.de/fileadmin/user_upload/Dokumente/Dokumente_fuer_Studierende/191212_Leitlinien_Praxismodule_Studien_Bachelorarbeiten.pdf (Richtlinien für Studienarbeiten)
