//
//  CoordinatorProtocol.swift
//  Zaimka
//
//  Created by Anton Solovev on 03.04.2024.
//

import UIKit

@MainActor
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
