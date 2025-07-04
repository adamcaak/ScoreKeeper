//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 04/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["Anna", "Bob", "Charlie"]
    
    var body: some View {
        ForEach(0..<players.count, id: \.description) { index in
                TextField("Name", text: $players[index])
        }
        Button("Add player", systemImage: "plus") {
            players.append("")
        }
    }
}

#Preview {
    ContentView()
}
