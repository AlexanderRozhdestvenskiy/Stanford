//
//  EmojiMemoryGame.swift
//  Spring
//
//  Created by Alexander Rozhdestvenskiy on 26.06.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚜", "✈️", "🚔", "🚤", "🚌", "🚎",
                         "🏎", "🚑", "🚒", "🦽", "🚲", "🛵",
                         "🛺", "🚡", "🚟", "🚃", "🚅", "🚂",
                         "🚇", "🚀", "🛸", "⛵️", "🚢", "🚁"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent
    
    func chooseTwo(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
