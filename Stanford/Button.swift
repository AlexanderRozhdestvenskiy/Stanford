//
//  Button.swift
//  Stanford
//
//  Created by Alexander Rozhdestvenskiy on 04.07.2021.
//

import SwiftUI

struct Button: View {
    var body: some View {
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
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
