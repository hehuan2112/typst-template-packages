# AMIA Conference

Write conference papers for the AMIA Annual Symposium.

The template provides US Letter pages with one-inch margins, Times New Roman
body text, AMIA-style title and affiliation blocks, compact headings, figure
and table captions, numbered equations, and AMA-style references.

## Use

Create a project from the template:

```sh
typst init @preview/amia-conference:0.1.0
```

Alternatively, import the package into an existing document:

```typ
#import "@preview/amia-conference:0.1.0": amia-symposium

#show: amia-symposium.with(
  title: "Your Paper Title",
  authors: (("Author One, Degree", (1,)),),
  affiliations: ("Department, Institution, City, State",),
  abstract: [Your abstract.],
  keywords: ("Biomedical Informatics",),
  bib: bibliography("refs.bib", style: "american-medical-association"),
)

= Introduction

Start writing your paper.
```

The template uses the system-installed Times New Roman font. Install that font
locally, or select a compatible substitute if it is unavailable in your Typst
environment.

The initialized document includes a reference, equation, figure, and table.
It also demonstrates the submission-type table in the supplied AMIA template.
Place figures and tables as close as possible to their first reference; keep
each individual figure or table on one page. Always consult the current AMIA
Annual Symposium Call for Participation for page limits and submission rules.

## License

This package, including the files copied into a new project, is released under
the MIT No Attribution License (MIT-0). AMIA is a trademark of the American
Medical Informatics Association; this independent package is not affiliated
with or endorsed by AMIA.
