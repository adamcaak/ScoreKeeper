//
//  Player.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 04/07/2025.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

extension Player: Equatable {
    
}
