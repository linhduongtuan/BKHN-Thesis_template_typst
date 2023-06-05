#import "font.typ": *
#import "utils.typ": *

#pagebreak()
#counter(page).update(1)

// Chapter counter, record formula hierarchy
#let counter_chapter   = counter("chapter")
#let counter_equation  = counter(math.equation)
#let counter_image     = counter(figure.where(kind: image))
#let counter_table     = counter(figure.where(kind: table))

// Format of Figures, Tables, and Equatations
#show figure: it => [
  #v(6pt)
    #set text(font_size.scriptsize)
    #set align(center)

    #if not it.has("kind") {
      it
    } else if it.kind == image {
      it.body
      [
        #textbf("Figure")
        #locate(loc => {
          [#counter_chapter.at(loc).first().#counter_image.at(loc).first()]
        })
        #it.caption
      ]
    } else if it.kind == table {
      [
        #textbf("Table")
        #locate(loc => {
          [#counter_chapter.at(loc).first().#counter_table.at(loc).first()]
        })
        #it.caption
      ]
      it.body
    } else {
      it.body
    }
    #v(6pt)
  ]

// Math Formulas
#set math.equation(
  numbering: (..nums) => locate( loc => {
      numbering("(1.1)", counter_chapter.at(loc).first(), ..nums)
  })
)

// Format citations
#show ref: it => {
  locate(loc => {
  let elems = query(it.target, loc)

  if elems == () {
    it
  } else {
    let elem = elems.first()
    let elem_loc = elem.location()

    if numbering != none {
      if elem.func() == math.equation {
        link(elem_loc, [#textbf("Equation")
          #counter_chapter.at(elem_loc).first().#counter_equation.at(elem_loc).first()
        ])
      } else if elem.func() == figure{
        if elem.kind == image {
          link(elem_loc, [#textbf("Figure")
            #counter_chapter.at(elem_loc).first().#counter_image.at(elem_loc).first()
          ])
        } else if elem.kind == table {
          link(elem_loc, [#textbf("Table")
            #counter_chapter.at(elem_loc).first().#counter_table.at(elem_loc).first()
          ])
        }
      }
    } else {
      it
    }
  }
})
}

#set heading(numbering: (..nums) => 
                          if nums.pos().len() == 1 {
                            "Chapter "+ RomanNumbers(nums.pos().first()) + "."
                          } 
                          else {
                            nums.pos().map(str).join(".")
                          })

#show heading: it =>  {
  if it.level == 1 {
    set align(center)
    set text(font: arial, size: font_size.large, weight: "bold")
    counter_chapter.step()
    counter_equation.update(())
    counter_image.update(())
    counter_table.update(())
    it
    v(12pt)
    par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
  } else if it.level == 2 {
    set text(font: arial, size: font_size.normalsize, weight: "bold")
    it
    v(18pt)
    par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
  } else if it.level == 3 {
    set text(font: arial, size: font_size.small, weight: "thin")
    it
    v(18pt)
    par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
  } else if it.level == 4 {
    set text(font: arial, size: font_size.small, weight: "thin")
    it
    v(18pt)
    par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
  }
}

// Format text
#set text(font: arial, size: font_size.footnotesize)
#set par(justify: true, leading: 1em, first-line-indent: 2em)
#show par: it => {
  it
}

// import contents from the context file 
#include "../contents/context.typ"