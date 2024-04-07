//
//  Credit.swift
//  Zaimka
//
//  Created by Anton Solovev on 06.04.2024.
//

import Foundation

struct Credit {
    let name: String
    let amount: Double
    let depositedAmount: Double
    let percentage: Double
    let creditType: CreditTypeDTO
    let creditTarget: CreditTargetDTO
    let startDate: Date
    let period: Int
}
