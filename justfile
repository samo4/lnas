# Reference setup, same as lns: any crossref-style filters run BEFORE citeproc.
# The bibliography is declared here rather than in AS.md YAML so that standalone chapter builds
# (`just ch FILE`) get citations too. Cite in pandoc syntax, narrative form (see CLAUDE.md):
# `Ogata [@ogata2002modern]` -> "Ogata [1]".
# The CSL style is IEEE, vendored next to this file (same content as
# https://www.zotero.org/styles/ieee), so builds need no network.
csl := "ieee.csl"
# citeproc adds NO heading of its own, so the reference list would float untitled;
# reference-section-title gives it a level-1 heading (same level as the chapter titles).
refs_title := "References"

default: as

as:
    pandoc AS.md 00-introduction.md 01-modeling.md 02-linear-algebra.md 03-state-space.md 04-properties.md \
    05-transfer-functions.md 06-linearization.md 07-discrete.md 08-appendix-A.md 09-appendix-B.md \
    10-appendix-C.md 11-appendix-D-review.md -o AS.pdf --pdf-engine=xelatex -H preamble.tex \
    -V geometry:margin=1in --toc --citeproc --bibliography=references.bib --csl={{csl}} \
    --metadata reference-section-title={{refs_title}}

# Standalone build of any single file: `just ch 04-properties.md` -> 04-properties.pdf
ch file:
    pandoc {{file}} -o {{replace(file, ".md", ".pdf")}} --pdf-engine=xelatex -H preamble.tex \
    -V geometry:margin=1in --citeproc --bibliography=references.bib --csl={{csl}} \
    --metadata reference-section-title={{refs_title}}
