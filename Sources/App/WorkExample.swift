//
//  WorkExample.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-09-01.
//

import Foundation

internal struct WorkExample: Encodable {
    // MARK: Properties
    internal let video: String
    internal let bgColor: String
    internal let topText: String
    internal let bulletPointPhrases: [String]
    internal let bottomText: String
}
