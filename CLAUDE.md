# Notes for Claude

Lecture notes on analysis of linear systems, written in pandoc Markdown and built with `just as` (all chapters, into `AS.pdf`) or `just ch FILE` (one chapter). The chapters are listed in the `justfile`; `AS.md` holds the title page and the *About this* preface.

- Keep every note, decision and preference in this repository, in this file. The user works on several computers, so do not use Claude's local memory directory.
- Cite in IEEE style (`ieee.csl`, set in the `justfile`), but always narratively: the author's name is part of the sentence, "Ogata [1] shows…", never a bare "[1]" standing in for a name. The names carry meaning (Chen's notation, Kalman's state space), and a reader should see who said what without looking at the reference list. In pandoc, write the name yourself and cite in brackets: `Ogata [@ogata2002modern]`, `Lay et al. [@lay2015linear]`. A bare `@key` renders as just "[1]" in a numeric style. Keys are in `references.bib`.
- TikZ figures live in `tikz/`.
- Style. The test for every rhetorical device: does it carry content a student needs?
  - Remove punchlines and closing aphorisms ("Same geometry, different ruler.", "a statement about shape alone").
  - Remove contrasts against a view nobody holds ("looks like the result of a computation, but…", "More important than smoothness is…", "What X offers instead is…").
  - Remove signposts that only delay the point ("The price of … shows when…", "shows the division of labour most clearly", "The coefficients have a simple meaning.", "The interval matters.").
  - Keep a rhetorical question when it is a question a student would really ask, answered at once ("Why so many?", "Why negative frequencies at all, then?").
  - Keep a short framing sentence that states the idea before the details ("The idea is simple:", "Behind both cases is an orthogonal split.", "The weight changes what *close* means.").
  - Keep a contrast that corrects a misconception a student plausibly has ("not the approximation but what systems do to them", "more than an approximation").
  - Keep plain, vivid verbs ("pays off"); do not flatten the author's voice into neutral prose.
  - Do not rewrite the user's own sentences for style unless asked; propose instead.
- After changing a chapter, rebuild it and check that it compiles.
- On Windows, shell heredocs mangle backslashes. For scripted edits of LaTeX-heavy text, write the script to a file first, or use the Edit tool.
