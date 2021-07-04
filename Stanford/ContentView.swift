//
//  ContentView.swift
//  Stanford
//
//  Created by Alexander Rozhdestvenskiy on 04.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
        }
        .padding(.horizontal)
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
