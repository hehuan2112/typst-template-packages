// AMIA conference paper style.

// Applies page, text, heading, caption, equation, and bibliography defaults.
// This must be applied from the document body via `#show: amia-symposium.with(...)`:
// document-wide rules in an imported Typst module do not propagate on their own.
#let template-styles(body) = {
  set page(
    paper: "us-letter",
    margin: (left: 1in, right: 1in, top: 1in, bottom: 1in),
    numbering: none,
    header: none,
  )
  set text(font: "Times New Roman", size: 10pt, lang: "en")
  set par(justify: true, first-line-indent: 0pt, leading: 0.6em, spacing: 1em)

  show heading.where(level: 1): set text(size: 10pt, weight: "bold", style: "normal")
  show heading.where(level: 1): set block(above: 1em, below: 0.6em)
  show heading.where(level: 2): set text(size: 10pt, weight: "bold", style: "italic")
  show heading.where(level: 2): set block(above: 0.8em, below: 0.5em)
  show heading.where(level: 3): set text(size: 10pt, weight: "regular", style: "italic")
  show heading.where(level: 3): set block(above: 1em, below: 0.6em)

  set figure(placement: top)
  set figure.caption(separator: [. ])
  show figure.caption: set text(size: 9pt)
  show figure.caption: set par(leading: 0.5em, spacing: 0pt)
  show figure.caption: it => context [
    #strong[#it.supplement #it.counter.display(it.numbering)#it.separator]#it.body
  ]

  set table(stroke: 0.5pt + black, inset: (x: 6pt, y: 3pt))
  set math.equation(numbering: "(1)")

  set bibliography(title: none)
  show bibliography: set text(size: 9pt)
  show bibliography: set par(first-line-indent: 0pt, leading: 0.5em, spacing: 0.5em)
  body
}

// `author-breaks` contains the 1-based author positions after which to insert
// a hard line break. This keeps long author lists readable without changing
// affiliation numbering.
#let title-block(title-text, authors, affiliations, author-breaks: ()) = {
  set align(center)
  set par(justify: false, leading: 0.5em)

  set text(size: 14pt, weight: "bold")
  title-text
  v(0pt)

  set text(size: 12pt, weight: "bold")
  let author-entries = authors.map(((name, institution-indexes)) => {
    let superscripts = institution-indexes.map(index => super(str(index)))
    [#name#superscripts.join(super(","))]
  })
  for (index, entry) in author-entries.enumerate() {
    entry
    if index < author-entries.len() - 1 {
      if author-breaks.contains(index + 1) {
        linebreak()
      } else {
        [, ]
      }
    }
  }
  v(0pt)

  set text(size: 11pt, weight: "bold")
  let affiliation-entries = affiliations.enumerate().map(((index, affiliation)) => {
    [#super(str(index + 1)) #affiliation]
  })
  affiliation-entries.join(linebreak())
  v(0pt)
}

#let abstract-block(body) = {
  set align(left)
  {
    set text(size: 10pt, weight: "bold")
    [Abstract]
    linebreak()
  }
  {
    set text(size: 10pt, style: "italic")
    body
  }
  v(6pt)
}

#let references-heading() = {
  set align(center)
  set text(size: 10pt, weight: "bold")
  [References]
  set align(left)
  v(0pt)
}

#let amia-symposium(
  title: "Title",
  authors: (),
  author-breaks: (),
  affiliations: (),
  abstract: none,
  bib: none,
  body,
) = {
  show: template-styles
  title-block(title, authors, affiliations, author-breaks: author-breaks)
  if abstract != none {
    abstract-block(abstract)
  }
  body
  if bib != none {
    references-heading()
    bib
  }
}
