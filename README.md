# LaTeX Vorlage für Studienarbeiten oder Ähnliches

## Dateien

### Eigenstaendigkeitserklaerung.tex
Die Datei [Eigenstaendigkeitserklaerung.tex][Eigenstaendigkeitserklaerung] enthält den Text für eine Erklärung.
Dieser wurde aus den [Richtlinien für Studienarbeiten][1] der DHBW Karlsruhe entnommen (Stand: Dezember 2019)

Der korrekte Ort muss vor der Abgabe/ dem Ausdrucken eingetragen werden.


### Glossar.tex
In der Datei [Glossar.tex][Glossar] werden die Akronyme, Glossareintrage sowie beides zusammen (siehe [hier][^1]) definiert.
Es is jeweils ein Beispiel vorhanden, diese können gelöscht werden.

[^1]: https://tex.stackexchange.com/questions/8946/how-to-combine-acronym-and-glossary


### Hauptteil.tex
In der Datei [Hauptteil.tex][Hauptteil] wird der Inhalt der Arbeit geschrieben. Falls es eine große Arbeit ist, kann der Text auch auf mehrere Dateien aufgeteilt werden und mit `\include{Dateiname}` in inkludiert werden.


### Literatur.bib
In der Datei [Literatur.bib][Literatur] wird die Literatur hinterlegt. Dies wird für Biber benötigt.


### Master.tex
Die Datei [Master.tex][Master] ist das Masterdokument der Arbeit. Hier werden Variablen definiert, die Dokumentenklasse "Studienarbeit" geladen und der Aufbau des Dokuments definiert.

Master.tex muss kompiliert werden, also an LuaLaTeX übergeben werden. Die anderen Datein sind in Master.tex inkludiert.


### Studienarbeit.cls
In der Datei [Studienarbeit.cls][Studienarbeit] werden alle notwendigen Pakete geladen, sowie Makros, die Titelseite, die Kopf- und Fußzeile und die Minted-Umgebung definiert.

Nützlich zu Minted: https://tex.stackexchange.com/questions/489732/how-to-draw-curly-braces-on-minted-and-tcolorbox

[//]: # (Links/ Quellen)
[Eigenstaendigkeitserklaerung]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Eigenstaendigkeitserklaerung.tex
[Glossar]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Glossar.tex
[Hauptteil]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Hauptteil.tex
[Literatur]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Literatur.bib
[Master]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Master.tex
[Studienarbeit]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Studienarbeit.cls
[1]: https://www.dhbw.de/fileadmin/user_upload/Dokumente/Dokumente_fuer_Studierende/191212_Leitlinien_Praxismodule_Studien_Bachelorarbeiten.pdf (Richtlinien für Studienarbeiten)
