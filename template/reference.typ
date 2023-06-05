#import "font.typ": *

#pagebreak()

// Set paragraph format Supported citation formats:0
// "apa", "chicago-author-date", "ieee", or "mla"
// [] TODO: DIY national standard citation format
#let bibliography_file = "../reference/refs.bib"

// Show references
#if bibliography_file != none {
  v(12pt)

  show bibliography: set text(10.5pt)
  show heading : it => {
    set align(center)
    set text(font: arial, size: font_size.large)
    it
    v(12pt)
  }
  bibliography(bibliography_file,
      title: [References],
      style: "ieee")
  v(12pt)
}