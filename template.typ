#import "font.typ": *

#let Thesis(
  // File path to Reference bib
) = {
  set page(paper:  "a4",
            margin: (
              top: 2.54cm,
              bottom: 2.54cm,
              left: 2.5cm,
              right: 2cm),
            footer: [
              #set align(center)
              #set text(size: font_size.scriptsize, baseline: -3pt)
              #counter(page).display(
              "1 / 1")
            ]

  )

  // import the cover page 
  include "cover.typ"

set page(
        
        header: {
              set text(font: arial, 10pt, baseline: 8pt, spacing: 3pt)
              table(
                 columns: (1fr, auto, auto), 
                 stroke: none,
                 align: (x, y) => (left, center, right).at(x),
              [How to use ChatGPT to improve the quality of a thesis written in English?], 
              [],
              [Linh T. Duong]
              )
              line(length: 100%, stroke: 0.1pt)
        }
  )
  // import abstract 
  include "abstract.typ"

  // import tables of contents, lists of tables and figures
  include "toc.typ"

  // import body 
  include "body.typ"

  // import References 
  include "reference.typ"

  // import acknowledgement
  include "acknowledgement.typ"

  // import appendices
  include "appendix.typ"

}
