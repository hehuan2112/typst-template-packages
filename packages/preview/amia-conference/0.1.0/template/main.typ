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
    Abstract text goes here, justified and in italics. The abstract is normally
    one paragraph long. See @submission-types for an example of abstract
    lengths by submission type; always verify the current Call for Participation.
  ],
  keywords: ("Biomedical Informatics", "Clinical Informatics"),
  bib: bibliography("refs.bib", style: "american-medical-association"),
)

= Introduction

Use this document as a starting point for an AMIA submission. Review the current
Call for Participation and submission site: each submission must meet the format
and presentation requirements for its submission type. This sentence contains a
sample reference #cite(<sample-reference>).

= Figures, Tables, and References

Place a figure or table as close as possible to the text that references it.
Keep each individual figure or table on one page. @allergy-alerts shows a
sample figure; replace its image and caption with content from your paper.

#figure(
  image("fig1.png", width: 100%),
  caption: [Example study-selection flow diagram.],
) <allergy-alerts>

= Example Content

This paragraph provides enough content to demonstrate one-column layout and
cross-references. Display equations are numbered automatically:

$ F_1 = 2 dot (P dot R) / (P + R) $ <eq-f1>

The supplied AMIA template also includes a table of submission types, abstract
lengths, and page limits. @submission-types reproduces that example for
orientation only; the current Call for Participation is authoritative.

#figure(
  table(
    columns: (1.15fr, 1fr, 1.35fr),
    align: left + horizon,
    table.header(
      table.cell([*Submission Type*]),
      table.cell([*Abstract Length*]),
      table.cell([*Page Length Maximum*]),
    ),
    [Paper - Regular], [125-150 words], [Ten],
    [Paper - Student], [125-150 words], [Ten],
    [Poster], [50-75 words#super("*")], [One],
    [Podium Abstract], [50-75 words#super("*")], [Two],
    [Oral Presentation (CIC only)], [50-75 words#super("*")], [Two (tables and figures on page 2)],
    [Ignite-style Talk (CIC only)], [50-75 words#super("*")], [One],
    [Panel], [125-150 words], [Three],
    [System Demonstration], [50-75 words#super("*")], [One],
    [Informatics Debate], [150 words], [Three],
    [Workshop], [250-300 words], [Four],
  ),
  caption: [Example submission types, abstract lengths, and page limits from the supplied AMIA template. Verify the current Call for Participation before submission.],
) <submission-types>

Note: Podium abstract and poster submissions require a brief 50-75 word abstract
entered in the submission portal. Consult the current submission instructions
for the applicable requirements.

= Conclusion

End the paper with a conclusion, followed by references. The supplied AMIA
template specifies Vancouver-style references; the default bibliography in this
package uses Typst's `american-medical-association` style.
