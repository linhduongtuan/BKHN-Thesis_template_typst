// Settings of the cover page
#import "font.typ": *
#import "../contents/info.typ": *

#let divider() = {
  line(length: 100%, stroke: 2pt + rgb("#0080FF"))
}

#set page(footer: none)
// Set the cover page without any number 
#counter(page).update(0)

#align(center)[
  #v(-20pt)

  #table(
    columns: (auto, auto, auto, auto, auto),
    align: horizon,
    stroke: none,
    [#image("./images/bgd.png", width: 40%)],
    [],
    [],
    [],
    [#image("./images/bk.png", width: 27%)],
    text(
      font: arial,
      size: font_size.tiny,
    )[MINISTRY OF EDUCATION AND TRAINING ],
    [],
    [],
    [],
    text(
      font: arial,
      size: font_size.tiny,
    )[HA NOI UNIVERSITY OF SCIENCE AND TECHNOLOGY],
    
  )
#divider()
 

  #v(60pt)

  #grid(
    columns: (100pt, 90%),
    column-gutter: 0.1pt,
    rect(width: 100%, inset: 2pt, 
        stroke: none,
        text(
        font: arial,
        size: font_size.large,
        weight: "bold",
        overhang: false,
        "TÊN ĐỀ TÀI: "
      )),
    rect(
      width: 90%,
      inset: 2pt,
      // Setting underline for text
      //stroke: (bottom: 0.01pt + black),
      stroke: none,
      text(
        font: arial,
        size: font_size.normalsize,
        weight: "bold",
        bottom-edge: "descender"
      )[
        #vn_title
      ]
    )
  ) 

  #v(40pt)

  #let info_value(body) = {
    rect(
      width: 80%,
      inset: 0.1pt,
      // Setting underline for text
      //stroke: (bottom: 0.01pt + black),
      stroke: none,
      text(
        font: arial,
        size: font_size.large,
        weight: "medium",
        bottom-edge: "descender"
      )[
        #body
      ]
    ) 
  }
  
  #let info_key(body) = {
    rect(width: 100%, inset: 2pt, 
      stroke: none,
      text(
      font: arial,
      size: font_size.large,
      weight: "bold",
      overhang: false,
      body
    ))
  }
  #v(80pt)
  #grid(
    columns: (120pt, 300pt),
    rows : (35pt, 35pt),
    //gutter: 3pt,
    // row : (auto ,auto, auto, auto, auto, auto),
    info_key("College:"),
    info_value(college),
    info_key("Discipline:"),
    info_value(major),
    info_key("Student ID:"),
    info_value(student_id),
    info_key("Student Name:"),
    info_value(student_name),
    info_key("Advisor 1:"),
    info_value(college_advisor),
    info_key("Advisor 2:"),
    info_value(company_advisor),
    info_key("Duration Time:"),   
    info_value(start_and_end_date)
  )
  
  #v(70pt)
  #align(
    center,
    block(
      text(
        weight: "bold",
        size: font_size.large,
        [_Hà Nội, ngày 06 tháng 06 năm 2023_ ]
      )
    )
  )
  #pad(
    top: 0.5em,
    bottom: 2em,
    x: 2em,
    text(
      weight: "bold",
      size:16pt,
      table(
        columns: (2fr,1fr),
        align: left,
        stroke: none,
        row-gutter: 0.5em,
        inset: 3pt,
        //..encaders
      )
    )
  )
]

//#pagebreak()


