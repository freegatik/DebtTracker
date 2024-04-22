//
//  StatRow.swift
//  Zaimka
//
//  Created by Anton Solovev on 24.04.2024.
//

import SwiftUI

struct StatRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .font(.subheadline)
                .foregroundColor(Color(UIColor.App.white).opacity(0.7))
            Spacer()
            Text(value)
                .font(.subheadline)
                .foregroundColor(Color(UIColor.App.white))
        }
    }
}
