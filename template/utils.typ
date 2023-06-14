#import "font.typ": *
#set text(lang: "vi")

#let RomanNumbers(num) = {
    let romanNum = (
      "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
      "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX",
      "XXI", "XXII", "XXIII", "XXIV", "XXV", "XXVI", "XXVII", "XXVIII", "XXIX", "XXX",
      "XXXI", "XXXII", "XXXIII", "XXXIV", "XXXV", "XXXVI", "XXXVII", "XXXVIII", "XXXIX", "XL",
    )
    romanNum.at(num - 1)
  }


// -----------------
// textbf utility function
// @param: it, the text to be bold
// @return: text, bold text
//  - Bold
#let textbf(it) = [
    #set text(weight: "semibold")
    #it
]

// -----------------
// textit utility function
// @param: it, the text to italicize
// @return: text, italicized text
//  - italics
#let textit(it) = [
    #set text(style: "italic")
    #it
]