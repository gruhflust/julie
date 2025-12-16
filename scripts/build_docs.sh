#!/usr/bin/env bash
# Build HTML preview and a DOCX document from the Kaizen markdown chapters.
# Requires: pandoc (macOS: brew install pandoc, Debian/Ubuntu: sudo apt-get install pandoc)

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
KAIZEN_DIR="${ROOT_DIR}/kaizen"
BUILD_DIR="${ROOT_DIR}/build"
MERGED_FILE="${BUILD_DIR}/kaizen.md"
HTML_FILE="${BUILD_DIR}/kaizen.html"
DOCX_FILE="${BUILD_DIR}/kaizen.docx"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Fehler: pandoc ist nicht installiert. macOS: 'brew install pandoc', Debian/Ubuntu: 'sudo apt-get install pandoc'." >&2
  exit 1
fi

mapfile -t CHAPTERS < <(find "${KAIZEN_DIR}" -maxdepth 2 -type f -name "*.md" -path "${KAIZEN_DIR}/[0-9][0-9]-*/*.md" | sort -V)

if [[ ${#CHAPTERS[@]} -eq 0 ]]; then
  echo "Keine Kapitel gefunden. Stelle sicher, dass Markdown-Dateien in nummerierten Unterordnern liegen." >&2
  exit 1
fi

mkdir -p "${BUILD_DIR}"

cat > "${MERGED_FILE}" <<'EOF'
# Kaizen im Unternehmenskontext

Dieses Dokument wurde automatisch aus den Kapiteldateien zusammengeführt.
EOF

for chapter in "${CHAPTERS[@]}"; do
  printf '\n\n' >> "${MERGED_FILE}"
  cat "${chapter}" >> "${MERGED_FILE}"
done

pandoc "${MERGED_FILE}" \
  --from gfm \
  --toc \
  --metadata title="Kaizen im Unternehmenskontext" \
  --standalone \
  --output "${HTML_FILE}"

pandoc "${MERGED_FILE}" \
  --from gfm \
  --toc \
  --metadata title="Kaizen im Unternehmenskontext" \
  --standalone \
  --output "${DOCX_FILE}"

echo "HTML-Vorschau erstellt unter: ${HTML_FILE}"
echo "DOCX-Dokument erstellt unter: ${DOCX_FILE}"
