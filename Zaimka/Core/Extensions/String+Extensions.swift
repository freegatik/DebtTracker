//
//  String+Extensions.swift
//  Zaimka
//
//  Created by Anton Solovev on 05.04.2024.
//

extension String: @retroactive Identifiable {
    public var id: String {
        self
    }
}
