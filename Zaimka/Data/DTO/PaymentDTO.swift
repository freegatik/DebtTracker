//
//  PaymentDTO.swift
//  Zaimka
//
//  Created by Anton Solovev on 12.04.2024.
//

import Foundation

struct PaymentDTO: Codable {
    let id: String
    let amount: Double
    let date: Date
    let type: PaymentTypeDTO
}
