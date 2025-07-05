//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Łukasz Adamczak on 05/07/2025.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20, 100])
    func resetScores(to newValue: Int) async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        var scoreboard = ScoreBoard(players: [
            Player(name: "Alice", score: 100),
            Player(name: "Bob", score: 200),
        ])
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreboard = ScoreBoard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Tom", score: 4)
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Tom", score: 4)])
    }
}
