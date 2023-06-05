#import "font.typ": *
#import "../contents/info.typ": *
#import "../contents/abstract.typ": *


#show heading : it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

// format footer
#set page(footer: [
    #set align(center)
    #set text(size: 10pt, baseline: -3pt)
    #counter(page).display(
      "I",
    )
] )

#pagebreak()
// Abstract written by Vietnamese
  #heading(level: 1, outlined: false)[TÓM TĂT]
  #v(2em)
  #v(2em)

  #par(
    justify: true,
    leading: 1.5em, 
    first-line-indent: 2em)[#text(font: arial, size: font_size.footnotesize)[#abstract_vn]]
  #v(2em)

  #par(first-line-indent: 0em)[
    #text(weight: "bold", font: arial, size: font_size.footnotesize)[
      TỪ KHOÁ： ]
    #text(font: arial, size: font_size.footnotesize)[#keywords_vn.join("；") ]
    ]

#pagebreak() 

// Abstract written by English
  #heading(level: 1, outlined: false)[ABSTRACT]
  #v(2em)
  #v(2em)

  #par(justify: true, 
       leading: 1.5em, 
       first-line-indent: 2em)[#text(font: arial, size: font_size.footnotesize)[#abstract_en]]
  #v(2em)

  #par(first-line-indent: 0em)[
    #text(font: "Times New Roman", size: font_size.footnotesize, weight: "bold")[
      KEYWORDS: ]
    #text(font: "Times New Roman", size: font_size.footnotesize)[#keywords_en.join("; ") ]
    ]

//#pagebreak() 
