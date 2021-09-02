import Fluent
import FluentPostgresDriver
import Leaf
import Vapor
import LeafKit

// configures your application
public func configure(_ app: Application) throws {
    let configurator = WebsiteConfigurator(app)
    
    try configurator.setupWesite()
    try routes(app)
}
