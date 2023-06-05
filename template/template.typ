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
              #set text(size: 10pt, baseline: -3pt)
              #counter(page).display(
              "1")
            ]
  )

  // import the cover page 
  include "cover.typ"

  set page(
    header: {
      set text(font: arial, 10pt, baseline: 8pt, spacing: 3pt)
        [Graduation Thesis (Design) Title: C++ High Performance and High Concurrency Server Framework]
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
