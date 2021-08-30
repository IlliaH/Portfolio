import Fluent
import FluentPostgresDriver
import Leaf
import Vapor
import LeafKit

// configures your application
public func configure(_ app: Application) throws {
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    let detected = LeafEngine.rootDirectory ?? app.directory.viewsDirectory
    LeafEngine.rootDirectory = detected
    
    LeafEngine.sources = .singleSource(NIOLeafFiles(
        fileio: app.fileio,
        limits: .default,
        sandboxDirectory: detected,
        viewDirectory: detected,
        defaultExtension: "html"
    ))
    
    if !app.environment.isRelease {
        LeafRenderer.Option.caching = .bypass
    }
    
    app.views.use(.leaf)
    
    let routers: [RouteCollection] = [
        FrontendRouter()
    ]
    
    for router in routers {
        try router.boot(routes: app.routes)
    }

    try routes(app)
}
