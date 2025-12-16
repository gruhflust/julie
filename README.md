# julie
Dokumenterstellung über verschiedene Themen

Ziel ist es, für Codex eine Struktur zu schaffen, die direkt zur Texterstellung genutzt werden kann. Dabei wird ein Thema iterativ mit zunehmend komplexem Inhalt bearbeitet. Ich gebe das Thema vor und benenne die Gesichtspunkte, die Du als Kapitel behandeln sollst.

**Thema:** Kaizen im Unternehmenskontext  
**Vorgaben:** Das gesamte Dokument soll im Repository als Reihe von Ordnern mit jeweils einer `.md`-Datei angelegt werden. Es soll sich später möglichst einfach in ein Word-Dokument konvertieren lassen und insgesamt etwa fünfzehn Seiten umfassen. Zu den einzelnen Kapiteln werden Hinweise geliefert, die sich im Laufe der Zeit verfeinern können. Diese README-Datei dient dauerhaft als Prompt und Auftragsschnittstelle für Codex. Korrigiere stets Rechtschreib- und Grammatikfehler, auch in dieser README. Die Kapitelüberschriften müssen nicht wörtlich übernommen werden, sondern definieren den Inhalt.

- **Kapitel 1: Überblick über das Dokument**  
  *Hinweis:* sollte einen schnellen Überblick geben, höchstens eine halbe Seite.
  Änderung: Kurz beschreiben, dass ein Begriffe-Kapitel ergänzt wurde.

- **Kapitel 2: Geschichtlicher Hintergrund von Kaizen**  
  *Hinweis:* Toyota und Japan.
  Änderung: Beispiel für die Reißleine (Andon) einbauen, mit der jede Person das Band stoppen kann.

- **Kapitel 3: Werkzeuge im Einsatz**  
  *Hinweis:* Werkzeuge wie Jira als Kanban-Board oder Git sollten als Beispiele erscheinen.

- **Kapitel 4: Vergleich mit SAFe und warum darin eher Muda entstehen kann als bei einem etablierten PDCA-Zyklus**

- **Kapitel 5: Technische und kulturelle Schulden im Unternehmen**  
  *Hinweis:* Warum ist es schwieriger, kulturelle Schulden abzubauen?

- **Kapitel 6: Begriffe aus dem Kaizen**  
  Änderung: Begriffe wie Muda, Ikigai, Mura, Gemba und verwandte Konzepte erläutern und um weitere Kernbegriffe ergänzen.

- **Kapitel 7: Fazit**  
  *Hinweis:* Vorteile von Kaizen-Methoden gegenüber streng hierarchischen Strukturen mit Meldewesen klar herausstellen.

## Dokument-Build (HTML und DOCX)
Mit `scripts/build_docs.sh` lässt sich das Kaizen-Dokument aus allen Kapiteln zusammenführen und als HTML-Vorschau sowie als DOCX-Datei erzeugen. Abhängigkeit ist lediglich [pandoc](https://pandoc.org/):

- macOS: `brew install pandoc`
- Debian/Ubuntu: `sudo apt-get install pandoc`

Beispielaufruf aus dem Repository-Wurzelverzeichnis:

```bash
./scripts/build_docs.sh
```

Die erzeugten Dateien liegen in `build/kaizen.html` (Vorschau) und `build/kaizen.docx` (Dokument).
