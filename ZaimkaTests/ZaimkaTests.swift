//
//  ZaimkaTests.swift
//  Zaimka
//
//  Created by Anton Solovev on 28.04.2024.
//

@testable import Zaimka
import SwiftUI
import Testing

struct ZaimkaTests {
    @Test func homeViewBasicElements() async {
        _ = await HomeView()

        let title = LocalizedKey.Home.homeTitle
        #expect(title.isEmpty == false)

        let creditsTitle = LocalizedKey.Home.credits
        let loansTitle = LocalizedKey.Home.givenLoans
        let totalDebtTitle = LocalizedKey.Home.totalDebt

        #expect(creditsTitle.isEmpty == false)
        #expect(loansTitle.isEmpty == false)
        #expect(totalDebtTitle.isEmpty == false)
    }
}
