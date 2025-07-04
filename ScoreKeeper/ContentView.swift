//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 04/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Tom", score: 0),
        Player(name: "John", score: 0),
        Player(name: "Mary", score: 0),
    ]
    
    var body: some View {
        VStack {
            ForEach($players) { $player in
                TextField("Name:", text: $player.name)
                Stepper("\(player.score)", value: $player.score)
            }
            
            Button("Add player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
