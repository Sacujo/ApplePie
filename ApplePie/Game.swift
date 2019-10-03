//
//  Game.swift
//  ApplePie
//
//  Created by Igor Guryan on 03/10/2019.
//  Copyright © 2019 Igor Guryan. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incrorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incrorrectMovesRemaining -= 1
        }
    }
    
}


