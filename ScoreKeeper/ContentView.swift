//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 04/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["Anna", "Bob", "Charlie"]
    @State private var scores: [Int] = [0,0,0]
    
    var body: some View {
        VStack {
            ForEach(0..<players.count, id: \.description) { index in
                TextField("Name:", text: $players[index])
                Stepper("Score:", value: $scores[index])
            }
            
            Button("Add player", systemImage: "plus") {
                players.append("")
                scores.append(0)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
