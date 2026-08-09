// AMIA Annual Symposium paper style.

// Applies page, text, heading, caption, equation, and bibliography defaults.
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

  set figure.caption(separator: [. ])
  show figure.caption: set text(size: 9pt)
  show figure.caption: set par(leading: 0.5em, spacing: 0pt)
  show figure.caption: caption => context [
    #strong[#caption.supplement #caption.counter.display(caption.numbering)#caption.separator]#caption.body
  ]
  set table(stroke: 0.5pt + black, inset: (x: 6pt, y: 3pt))
  set math.equation(numbering: "(1)")
  set bibliography(title: none)
  show bibliography: set text(size: 9pt)
  show bibliography: set par(first-line-indent: 0pt, leading: 0.5em, spacing: 0.5em)
  body
}

#let title-block(title-text, authors, affiliations) = {
  set align(center)
  set text(size: 14pt, weight: "bold")
  title-text
  v(2pt)

  set text(size: 12pt, weight: "bold")
  let author-entries = authors.map(((name, institution-indexes)) => {
    let superscripts = institution-indexes.map(index => super(str(index)))
    [#name#superscripts.join(super(","))]
  })
  author-entries.join(", ")
  v(0pt)

  set text(size: 10pt, weight: "bold")
  let affiliation-entries = affiliations.enumerate().map(((index, affiliation)) => {
    [#super(str(index + 1)) #affiliation]
  })
  affiliation-entries.join(linebreak())
  v(8pt)
}

#let abstract-block(body) = {
  set align(left)
  set text(size: 10pt, weight: "bold")
  [Abstract]
  linebreak()
  set text(size: 10pt, style: "italic")
  body
  v(6pt)
}

#let keywords-block(words) = {
  set align(left)
  set text(size: 10pt)
  [*Keywords:* #words.join("; ")]
  v(8pt)
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
  affiliations: (),
  abstract: [],
  keywords: (),
  bib: none,
  body,
) = {
  show: template-styles
  title-block(title, authors, affiliations)
  abstract-block(abstract)
  keywords-block(keywords)
  body
  if bib != none {
    references-heading()
    bib
  }
}
