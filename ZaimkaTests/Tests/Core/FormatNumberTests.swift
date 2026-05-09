//
//  FormatNumberTests.swift
//  Zaimka
//
//  Created by Anton Solovev on 28.04.2024.
//

import Testing
@testable import Zaimka

struct FormatNumberTests {
    @Test func formatAmount_usesThousandsSuffix() {
        #expect(formatAmount(1000) == "1.0K")
        #expect(formatAmount(3500) == "3.5K")
    }

    @Test func formatAmount_usesMillionsSuffix() {
        #expect(formatAmount(1_500_000) == "1.5M")
    }

    @Test func formatAmount_plainNumberBelowThousands() {
        #expect(formatAmount(0) == "0")
        #expect(formatAmount(999) == "999")
    }
}
