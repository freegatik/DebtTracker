//
//  MockRepositoryValidate.swift
//  Zaimka
//
//  Created by Anton Solovev on 06.05.2026.
//

import SwiftUI
@testable import Zaimka

// MARK: - MockRepositoryValidate

final class MockRepositoryValidate: RepositoryValidate {
    var validateInputCallCount = 0
    var capturedText: String?

    func validateInput(text: String, value: Binding<Double?>, error: Binding<Bool>) {
        validateInputCallCount += 1
        capturedText = text
    }
}
