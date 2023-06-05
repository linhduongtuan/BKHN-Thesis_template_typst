#import "font.typ": *
#import "utils.typ": *

//#counter(heading).update(0)
//#set heading(numbering: "APPENDIX") 

//#show heading : it => {
//  pagebreak()
//  set align(center)
//  text(font: arial, size: font_size.large)[#it]
//  v(1em)
//  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
//}

// Format paragraphs
//#set text(font: arial, size: font_size.footnotesize)
//#set par(justify: true, leading: 1.5em, first-line-indent: 2em)
//#show par: it => {
//  it 
//  v(5pt)
//}
#pagebreak()
//#counter(page).update(0)
#set heading(numbering: "A")
// Chapter counter, record formula hierarchy

#let counter_appendix  = counter("appendix")

#set heading(numbering: (..nums) => 
                          if nums.pos().len() == 1 {
                            "Appendix "+ nums.pos().map(str).first() + "."
                          } 
                          else {
                            nums.pos().map(str).join(".")
                          })

#show heading: it =>  {
  
    set align(center)
    set text(font: arial, size: font_size.large, weight: "bold")
    counter_appendix.step()

    it
    v(12pt)
    par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
  
}

// Format text
#set text(font: arial, size: font_size.footnotesize)
#set par(justify: true, leading: 1em, first-line-indent: 2em)
#show par: it => {
  it
}


// import content from the file
#include "../contents/appendix.typ"