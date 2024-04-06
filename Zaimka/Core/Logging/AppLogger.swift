//
//  AppLogger.swift
//  Zaimka
//
//  Created by Anton Solovev on 04.04.2024.
//

import OSLog

enum AppLogger {
    nonisolated static let subsystem = Bundle.main.bundleIdentifier ?? "solovev.Zaimka"

    static let storage = Logger(subsystem: subsystem, category: "Storage")
    static let presentation = Logger(subsystem: subsystem, category: "Presentation")
    static let auth = Logger(subsystem: subsystem, category: "Auth")
}
