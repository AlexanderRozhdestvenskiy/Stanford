//
//  ContentView.swift
//  Stanford
//
//  Created by Alexander Rozhdestvenskiy on 04.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojisCount = 8
    
    var emojis = ["🚗", "🚕", "🚌", "🏎", "🚑", "🚎",
                  "🚒", "🚜", "🦯", "🦽", "🛻", "🚐",
                  "🦼", "🚲", "🛵", "🛺", "🏍", "🚔",
                  "🚡", "🚠", "🚇", "🚁", "🛳", "✈️"]
    
    var remove: some View {
        Button {
            if emojisCount > 1 {
                emojisCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojisCount < emojis.count {
                emojisCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.orange)
            
            Spacer()
            
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    
    var content: String
    
    let shape = RoundedRectangle(cornerRadius: 20)
    
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
