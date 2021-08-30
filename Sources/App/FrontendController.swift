//
//  FrontendController.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-08-29.
//

import Foundation
import Vapor
import Leaf

internal struct FrontendController {
    internal func mainView(req: Request) throws -> EventLoopFuture<View> {
        return req.leaf.render("index", [
            "title": "my page - home",
            "body": "Hi there, welcome to my awesome page!"
        ])
    }
}
