#import "font.typ": *

// Abbreviations
#show heading : it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#heading(level: 1, outlined: false)[ABBREVIATIONS]
#v(2em)

#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set align(center)
  set par(leading: 1em )
  it
}

#figure(
  table(
     columns: (auto, auto, auto),
     [Chữ viết tắt], [Tiếng Anh], [Tiếng Việt], 
     [DNA], [Deoxy Nucleotide Acid], [Acid Deoxy Nucleotide], 
     [PCR], [Polymerase Chain Reaction], [Phản ứng chuỗi trùng hợp], 
     [AI], [Artificial Intelligence], [Trí tuệ nhân tạo],
     [SNP], [Single nucleotide polymorphism], [Tính đa hình nucleotide đơn], 
     [ML], [Machine Learning], [Học Máy]
  ),
  //caption: [ABBREVIATIONS],
)

#pagebreak()

#show heading : it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#set page(footer: [
    #set align(center)
    #set text(size: 10pt, baseline: -3pt)
    #counter(page).display(
      "I",
    )
] )

// List of Figures
#heading(level: 1, outlined: false)[List of Figures]
#v(2em)

#show outline: it => {
  set heading(numbering: "1.1")
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  target: figure.where(kind: image),
  indent : true,
)
#pagebreak()

// List of Tables
#heading(level: 1, outlined: false)[List of Tables]
#v(2em)

#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  target: figure.where(kind: table),
  indent : true,
)
#pagebreak()

// TODO: List of Formulas
#heading(level: 1, outlined: false)[List of Formulas]
#v(2em)

#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  //target: figure.where(kind: equation),
  target: math.equation,
  indent : true,
)
#pagebreak()

// Table of Contents
#heading(level: 1, outlined: false)[Table of Contents]
#v(2em)
#{
  set align(left)
  set text(font: arial, size: font_size.footnotesize)
  set par(first-line-indent: 0pt)

  [TÓM TẮT ] + [.] * 135 + [ I]
  set par(leading: 1em)
  [ABSTRACT ] + [.] * 132 + [ II]
  set par(leading: 1em)
  [ABBREVIATIONS ] + [.] * 121 + [ III]
  set par(leading: 1em)
  [LIST OF FIGURES ] + [.] * 120 + [ IV]
  set par(leading: 1em)
  [LIST OF TABLES ] + [.] * 123 + [ V]
  set par(leading: 1em)
  [LIST OF FORMULAS ] + [.] * 115 + [ VI]
  set par(leading: 1em)
  [LIST OF EQUATIONS ] + [.] * 114 + [ VI]
  set par(leading: 1em)
  [TABLE OF CONTENTS ] + [.] * 110 + [ VII]
}
#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  indent : true,
)



