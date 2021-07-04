//
//  StanfordApp.swift
//  Stanford
//
//  Created by Alexander Rozhdestvenskiy on 04.07.2021.
//

import SwiftUI

@main
struct StanfordApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
