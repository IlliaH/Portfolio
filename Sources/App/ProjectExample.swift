//
//  ProjectExample.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-09-01.
//

import Foundation

internal struct ProjectExample: Encodable {
    // MARK: Properties
    // in current Leaf version index is missing
    internal let index: Int
    internal let video: String
    internal let bgColor: String
    internal let topText: String
    internal let bottomText: String
}
