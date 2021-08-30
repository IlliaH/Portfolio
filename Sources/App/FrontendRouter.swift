//
//  FrontendRouter.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-08-29.
//

import Foundation
import Vapor

internal struct FrontendRouter: RouteCollection {
    // MARK: Properties
    private let controller = FrontendController()
    
    internal func boot(routes: RoutesBuilder) throws {
        routes.get(use: controller.mainView(req:))
    }
}
