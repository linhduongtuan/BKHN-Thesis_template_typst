#import "font.typ": *
//#import "tablex.typ": *
#import "tablex.typ": tablex, cellx, rowspanx, colspanx, hlinex, vlinex, gridx, default-if-auto

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
  show raw: it => if it.block {
        v(1.5em, weak: true)
        it
    } else {
        it
    }

    show raw.where(block: true): it => {
        set par(justify: false)

        block(inset: (left: 1em), grid(columns: (100%, 100%), column-gutter: -100%,
            block(width: 100%, inset: 1em, {
                let lines = it.text.split("\n").rev()
                let _i = 0

                while _i < lines.len() and lines.at(_i).trim() == "" and _i < 2 {
                    _i += 1
                }

                let lines = lines.slice(_i).rev()

                for (i, line) in lines.enumerate() {
                    hide(box(width: 0pt, align(right, str(i + 1) + h(2em))))

                    set text(fill: rgb("#5e5e5e"), size: 0.75em)
                    box(width: 0pt, align(right, str(i + 1) + h(2em)))

                    hide(line)
                    linebreak()
                }
            }),

            block(stroke: (left: 0.025cm + rgb("#8e8e8e")),
                fill: luma(246),
                width: 100%,
                inset: 1em,
                it),
        ))
    }

    show raw.where(block:true): block.with(
        width: 100%,
    )

  // import the cover page 
  include "cover.typ"
  
 // import acknowledgement
  include "acknowledgement.typ"
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

  // import appendices
  include "appendix.typ"

}
