//
//  EmojiMemoryGame.swift
//  Spring
//
//  Created by Alexander Rozhdestvenskiy on 26.06.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚜", "✈️", "🚔", "🚤", "🚌", "🚎",
                                 "🏎", "🚑", "🚒", "🦽", "🚲", "🛵",
                                 "🛺", "🚡", "🚟", "🚃", "🚅", "🚂",
                                 "🚇", "🚀", "🛸", "⛵️", "🚢", "🚁"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func chooseTwo(_ card: Card) {
        model.choose(card)
    }
}
