//
//  ContentView.swift
//  Stanford
//
//  Created by Alexander Rozhdestvenskiy on 04.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Button
    
    var vehicles: some View {
        Button {
            emojis = emojisVehicles.shuffled()
        } label: {
            VStack {
                Image(systemName: "tram").font(.largeTitle)
                Text("Vehicles")
            }
        }
    }
    
    var smileys: some View {
        Button {
            emojis = emojisSmileys.shuffled()
        } label: {
            VStack {
                Image(systemName: "face.smiling").font(.largeTitle)
                Text("Smileys")
            }
        }
    }
    
    var fruits: some View {
        Button {
            emojis = emojisFruits.shuffled()
        } label: {
            VStack {
                Image(systemName: "leaf").font(.largeTitle)
                Text("Fruits")
            }
        }
    }
    
    var flags: some View {
        Button {
            emojis = emojiFlags.shuffled()
        } label: {
            VStack {
                Image(systemName: "flag").font(.largeTitle)
                Text("Flags")
            }
        }
    }
    
    // MARK: - Properties
    
    @State var emojisVehicles = ["🦼", "🛴", "🚲", "🛵", "🏍", "🚨",
                                 "🚍", "🚔", "🚘", "🚖", "🚡", "🚠",
                                 "🚟", "🚃", "🚋", "🚞", "🚝", "🚄",
                                 "🚅", "🚇", "✈️", "🛩", "🛰", "🚀"]
    
    @State var emojisSmileys = ["😇", "😎", "🥸", "😛", "🤣", "☺️",
                                "🤩", "😡", "😤", "🥳", "😟", "😞"]
    
    @State var emojisFruits = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌",
                               "🍉", "🍇", "🍓", "🫐", "🍈", "🍒",
                               "🍑", "🥭", "🍍", "🥥", "🥝", "🥑"]
    
    @State var emojiFlags = ["🏴‍☠️", "🏳️", "🏴", "🚩", "🏁", "🏳️‍🌈",
                             "🇺🇳", "🇧🇪", "🇧🇷", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🇩🇪", "🇪🇸",
                             "🇳🇴", "🇰🇷", "🇷🇺", "🇺🇸"]
    
    @State var emojis = ["🦼", "🛴", "🚲", "🛵", "🏍", "🚨",
                         "🚍", "🚔", "🚘", "🚖", "🚡", "🚠",
                         "🚟", "🚃", "🚋", "🚞", "🚝", "🚄",
                         "🚅", "🚇", "✈️", "🛩", "🛰", "🚀"]
    
    // MARK: - UI
    
    var body: some View {
        
        VStack {
            
            Text("Memorize!").font(.largeTitle)
            
            Spacer()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            
            Spacer()
            
            HStack {
                vehicles
                Spacer()
                smileys
                Spacer()
                fruits
                Spacer()
                flags
            }
            .font(.title2)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

    // MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
