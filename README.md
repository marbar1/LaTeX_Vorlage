
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


## (Perl)
Falls latexmk verwendet wird, muss zusätzlich eine Perl Distribution installiert sein ([Strawberry Perl][Strawberry_Perl]).

## Verwendung
Die PDF wird mit LuaLaTeX erzeugt und zur Quellenverwaltung wird Biber/ biblatex verwendet. LuaLaTeX selbst benötigt mehrere Durchläufe bis alle Referenzen aktualisiert sind. Biber wird danach ausgeführt und generiert die notwendigen Dateien für die Zitate und Quellen. Danach muss noch einmal LuaLaTeX ausgeführt werden.
Als TeX Distribution wird MikTeX empfohlen, da bislang nur diese getestet wurde.

Da LuaLaTeX und Biber mehrere Male aufgerufen werden müssen, um das Dokument korrekt zu erzeugen, wird [Latexmk][Latexmk] empfohlen.


## Dateien

### Abstract.tex
Die Datei [Abstract.tex][Abstract] enthält eine deutsche Zusammenfassung der Arbeit sowie eine englischen Abstract.


### Anhaenge.tex
Die Datei [Anhaenge.tex][Anhaenge] enthält Dateien und Text, welche der Arbeit angehängt werden.


### Eigenstaendigkeitserklaerung.tex
Die Datei [Eigenstaendigkeitserklaerung.tex][Eigenstaendigkeitserklaerung] enthält den Text für eine Erklärung.
Dieser wurde aus den [Richtlinien für Studienarbeiten][1] der DHBW Karlsruhe entnommen (Stand: Dezember 2019)


### Glossar.tex
In der Datei [Glossar.tex][Glossar] werden die Akronyme, Glossareinträge sowie beides zusammen (siehe [hier][acronym_glossary]) definiert.
Es is jeweils ein Beispiel vorhanden, diese können gelöscht werden.


### Hauptteil.tex
In der Datei [Hauptteil.tex][Hauptteil] wird der Inhalt der Arbeit geschrieben. Falls es eine große Arbeit ist, kann der Text auch auf mehrere Dateien aufgeteilt werden und mit `\include{Dateiname}` inkludiert werden.


### Literatur.bib
In der Datei [Literatur.bib][Literatur] wird die Literatur hinterlegt. Dies wird für Biber benötigt.


### Main.tex
Die Datei [Main.tex][Main] ist das Hauptdokument der Arbeit. Hier werden Variablen definiert, die Dokumentenklasse "Studienarbeit" geladen und der Aufbau des Dokuments definiert.

Main.tex muss kompiliert werden, also an LuaLaTeX übergeben werden. Die anderen Datein sind in Main.tex inkludiert.


### Studienarbeit.cls
In der Datei [Studienarbeit.cls][Studienarbeit] werden das Seitenlayout und einige nützliche Makros definiert.

<!-- (Links/ Quellen) -->
[Minted]: https://ctan.kako-dev.de/macros/latex/contrib/minted/minted.pdf
[Biber]: https://mirror.informatik.hs-fulda.de/tex-archive/biblio/biber/documentation/biber.pdf
[Biber_download]: https://sourceforge.net/projects/biblatex-biber/
[Strawberry_Perl]: http://strawberryperl.com/
[Latexmk]: https://ftp.agdsn.de/pub/mirrors/latex/dante/support/latexmk/latexmk.pdf
[Anhaenge]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Anhaenge.tex
[Abstract]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Abstract.tex
[Eigenstaendigkeitserklaerung]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Eigenstaendigkeitserklaerung.tex
[Glossar]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Glossar.tex
[Hauptteil]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Hauptteil.tex
[Literatur]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Literatur.bib
[Main]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Main.tex
[Studienarbeit]: https://github.com/Marius202/LaTeX_Vorlage/blob/master/Studienarbeit.cls
[acronym_glossary]: https://tex.stackexchange.com/questions/8946/how-to-combine-acronym-and-glossary
[1]: https://www.dhbw.de/fileadmin/user_upload/Dokumente/Dokumente_fuer_Studierende/191212_Leitlinien_Praxismodule_Studien_Bachelorarbeiten.pdf (Richtlinien für Studienarbeiten)
