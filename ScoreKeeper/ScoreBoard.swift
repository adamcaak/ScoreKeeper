//
//  ScoreBoard.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 05/07/2025.
//

import Foundation

struct ScoreBoard {
    var players: [Player] = [
        Player(name: "Tom", score: 0),
        Player(name: "John", score: 0),
        Player(name: "Mary", score: 0),
    ]
    
    var state = GameState.setup
    var doesHighestScoreWin: Bool = true
    
    var winner: [Player] {
        players
    }
    
    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
