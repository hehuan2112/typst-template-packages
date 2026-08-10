#import "@preview/amia-conference:0.1.0": amia-symposium

#show: amia-symposium.with(
  title: "Title of Your Submission",
  authors: (
    ("Firstname A. Lastname, Degrees", (1,)),
    ("Firstname B. Lastname, Degrees", (2,)),
  ),
  affiliations: (
    "Institution, City, State, Country (if applicable)",
    "Institution, City, State, Country (if applicable)",
  ),
  abstract: [
    Abstract text goes here, justified and in italics. The abstract would normally
    be one paragraph long. Consult the current Call for Participation for the
    required abstract length for your submission type.
  ],
  bib: bibliography("refs.bib", style: "american-medical-association"),
)

= Introduction

Use this document as a starting point for an AMIA submission. Review the AMIA
Call for Participation and the submission site, where the requirements for each
submission type are listed. All submissions must conform to the current format
and presentation requirements.

= Another Major Heading and References

This paragraph demonstrates citations#cite(<pryor1983help>)#cite(<gardner1990blood>),
figure references, and a compact table. Place each figure or table as close as
possible to its first mention, and keep each individual visual on one page.

#figure(
  placement: none,
  rect(
    width: 100%,
    height: 0.75in,
    fill: rgb("f3f5f7"),
    stroke: 0.8pt + rgb("7a8694"),
    inset: 10pt,
    align(center + horizon)[
      #set text(size: 10pt, fill: rgb("52606d"))
      FIGURE 1 PLACEHOLDER — replace with a final high-resolution figure.
    ],
  ),
  caption: [Example figure placeholder.],
) <fig-example>

@tab-submission-types shows a compact subset of the submission guidance.
Always verify the current Call for Participation before submission.

#figure(
  placement: none,
  table(
    columns: (1.35fr, 1fr, 1.25fr),
    align: left + horizon,
    table.header(
      table.cell([*Submission Type*]),
      table.cell([*Abstract Length*]),
      table.cell([*Page Maximum*]),
    ),
    [Paper - Regular], [125-150 words], [Ten],
    [Paper - Student], [125-150 words], [Ten],
    [Poster], [50-75 words#super("*")], [One],
    [Podium Abstract], [50-75 words#super("*")], [Two],
  ),
  caption: [Selected submission types and limits; verify current requirements.],
) <tab-submission-types>

#emph[Podium abstracts and posters require a brief abstract in the submission portal.]

= Conclusion

Your conclusion goes at the end, followed by centered Vancouver-style references.
Replace all sample text, figures, tables, and references before submission.
