//
//  WebsiteConfigurator.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-09-02.
//

import Foundation
import Vapor
import Leaf

internal final class WebsiteConfigurator {
    // MARK: Properties
    private let app: Application
    
    // MARK: Init
    internal init(_ app: Application) {
        self.app = app
    }
    
    // MARK: Setup
    internal func setupWesite() throws {
        app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
        setupLeafDirectory()
        setupCaching()
        app.views.use(.leaf)
        try setupRouters()
    }
    
    private func setupLeafDirectory() {
        let detected = LeafEngine.rootDirectory ?? app.directory.viewsDirectory
        LeafEngine.rootDirectory = detected
        
        LeafEngine.sources = .singleSource(NIOLeafFiles(
            fileio: app.fileio,
            limits: .default,
            sandboxDirectory: detected,
            viewDirectory: detected,
            defaultExtension: "html"
        ))
    }
    
    private func setupCaching() {
        if !app.environment.isRelease {
            LeafRenderer.Option.caching = .bypass
        }
    }
    
    private func setupRouters() throws {
        let routers: [RouteCollection] = [
            FrontendRouter()
        ]
        
        for router in routers {
            try router.boot(routes: app.routes)
        }
    }
}
