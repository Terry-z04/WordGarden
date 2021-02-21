import UIKit


var myName = "Gallaugher"
var smallerString = "laugh"


// .contains - not only work on Strings, it works on arrays as well
if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("There is no \(smallerString) in \(myName)")
}


// hasPrefix + hasSuffix
var occupation = "Swift Developer"
var searchString = "Swift"

print("\nPREFIX SEARCH")

if occupation.hasPrefix(searchString) {
    print("You're Hired!")
} else {
    print("No job for you")
}

print("\nSUPPIX SEARCH")
occupation = "IOS Developer"
searchString = "Developer"

if occupation.hasSuffix(searchString) {
    print("You're Hired! We need more \(occupation)s")
} else {
    print("No job for you. No one needs any \(occupation)s")
}


// .removeLast()
print("\nREMOVE")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print("After we remove \(lastChar) the band is just \(bandName).")

// .removeFirst(k: Int)
print("\nREMOVE FIRST #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

// .replacingOccurances(of: with:)
print("\nREPLACING OCCURANCES OF")

// 123 James St.
// 123 James St
// 123 James Street

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print(standardAddress, address)

// What would you do if we had 123 St. James St.? See Exercises after chapter...


// Iterate Through a String (Go to office hour and ask this)
print("\nBACKWARDS STRING")

var name = "Gallaugher"
var backwardsName = ""
for letter in name {
    backwardsName = String(letter) + backwardsName
}
print("\(name), \(backwardsName)")

// another way to make a String spelled backward
// .reversed()
var newBackwardName = ""
for letter in name.reversed() {
    newBackwardName += String(letter)
}
print("newBackwardName = \(newBackwardName)")

// capitalization
print("\nPLAYING WITH CAPS")
var crazyCaps = "SwIFt DeveLoPer"
var uppercased = crazyCaps.uppercased()
var lowercased = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized

print(uppercased, lowercased, capitalized)
print(crazyCaps)

// Challenge: Create an Underscored Guess Word for Word Garden
var wordToGuess = "SWIFT"
var revealedWord = "_"

for _ in 1...wordToGuess.count - 1 {
    revealedWord = revealedWord + " _"
}
//revealedWord.removeLast()
print("\(wordToGuess) will show as '\(revealedWord)'")

// Create a String from a repeating valus
revealedWord = "_" + String(repeating: " _", count: wordToGuess.count - 1)
print("using repeating String: '\(revealedWord)'")

// Challenge: Reveal word after letter guess
// REVEAL THE WORD
print("\nREVEAL THE WORLD")

wordToGuess = "SWIFT"
var lettersGuessed = "SQFTX"
revealedWord = ""
// loop through all letters in wordToGuess
for letter in wordToGuess {
    //check if letter in wordToGuess is in lettersGuessed (i.e. did you guess this letter already?)
    if lettersGuessed.contains(letter) {
        //if so, add this letter + a blanck space, to revealedWord
        revealedWord = revealedWord + "\(letter) "
    } else {
        //if not, add an underscore + a blank space, to revealedWord
        revealedWord = revealedWord + "_ "
    }
}
//remove the extra space at the end of revealedWord
revealedWord.removeLast()

print("wordToGuess = \(wordToGuess)")
print("lettersGuessed = \(lettersGuessed)")
print("revealedWord = \(revealedWord)")

