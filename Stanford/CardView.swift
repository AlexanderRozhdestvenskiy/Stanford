//
//  CardView.swift
//  Memorize
//
//  Created by Alexander Rozhdestvenskiy on 24.06.2021.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp: Bool = true
    
    var content: String = ""
    
    let shape = RoundedRectangle(cornerRadius: 20)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 5)
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
