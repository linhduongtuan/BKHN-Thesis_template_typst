#import "font.typ" : *

#pagebreak()

#show heading : it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  v(12pt)
  it
  v(12pt)
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#heading(level: 1)[ACKNOWLEDGEMENT ~ LỜI CẢM ƠN]
#v(1em)

// Format paragraphs
#set text(font: arial, size: font_size.footnotesize)
#set par(justify: false, leading: 1.5em, first-line-indent: 2em)
#show par: it => {
  it 
  v(5pt)
}

// import contents from the file
#include "../contents/acknowledgement.typ"