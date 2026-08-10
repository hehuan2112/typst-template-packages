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
  // Optional: break a long author list after these 1-based positions.
  author-breaks: (),
  affiliations: ("Department, Institution, City, State",),
  abstract: [Your abstract.],
  bib: bibliography("refs.bib", style: "american-medical-association"),
)

= Introduction

Start writing your paper.
```

Set `abstract: none` when the submission system collects the abstract
separately. For long author lists, use `author-breaks`, for example `(3,)`, to
start a new line after the third author.

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
