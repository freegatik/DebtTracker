//
//  DebtRepositoryProtocol.swift
//  Zaimka
//
//  Created by Anton Solovev on 09.04.2024.
//

import Foundation
import SwiftUI

protocol RepositoryValidate {
    func validateInput(text: String, value: Binding<Double?>, error: Binding<Bool>)
}
