//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by Łukasz Adamczak on 06/07/2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()
            Picker("Starting point", selection: $startingPoints) {
                Text("0 starting point")
                    .tag(0)
                Text("10 starting point")
                    .tag(10)
                Text("20 starting point")
                    .tag(20)
            }
        }
        .padding()
        .background(.thinMaterial, in: .rect(cornerRadius: 10.0))
    }
}

#Preview {
    @Previewable @State var startingPoints: Int = 10
    SettingsView(startingPoints: $startingPoints)
}
