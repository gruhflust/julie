# Kaizen im Unternehmenskontext

Diese Sammlung fasst die Grundlagen und Anwendung von Kaizen im Unternehmenskontext zusammen. Die Kapitel sind in separaten Ordnern abgelegt, um eine spätere Konvertierung nach Word oder andere Formate zu erleichtern. Jedes Kapitel kann eigenständig gelesen werden; gemeinsam bilden sie einen roten Faden von der Einordnung bis zum Fazit.

## Inhaltsverzeichnis
- [Kapitel 1: Überblick über das Dokument](01-ueberblick/ueberblick.md)
- [Kapitel 2: Geschichtlicher Hintergrund von Kaizen](02-geschichte/geschichte.md)
- [Kapitel 3: Werkzeuge im Einsatz](03-werkzeuge/werkzeuge.md)
- [Kapitel 4: Vergleich mit SAFe und Muda-Risiken](04-vergleich-safe/vergleich-safe.md)
- [Kapitel 5: Technische und kulturelle Schulden](05-schulden/schulden.md)
- [Kapitel 6: Begriffe aus dem Kaizen](06-begriffe/begriffe.md)
- [Kapitel 7: Fazit](07-fazit/fazit.md)

Jedes Kapitel ist so gestaltet, dass es zusammen ungefähr fünfzehn Seiten ergibt. Die Hinweise aus der ursprünglichen Aufgabenstellung wurden berücksichtigt. Die Ordner sind fortlaufend nummeriert und spiegeln die Kapitelreihenfolge wider.

## Dokument automatisch erstellen
Das Skript `../scripts/build_docs.sh` fasst alle Kapitel in numerischer Reihenfolge zusammen und erzeugt in `build/` eine HTML-Vorschau (`kaizen.html`) sowie ein DOCX-Dokument (`kaizen.docx`). Voraussetzung ist pandoc (macOS: `brew install pandoc`, Debian/Ubuntu: `sudo apt-get install pandoc`).
