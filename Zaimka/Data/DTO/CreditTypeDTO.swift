//
//  CreditTypeDTO.swift
//  Zaimka
//
//  Created by Anton Solovev on 11.04.2024.
//

enum CreditTypeDTO: String, Codable {
    case consumer = "Потребительский кредит"
    case car = "Автокредит"
    case mortgage = "Ипотека"
    case microloan = "Микрокредит"
}
