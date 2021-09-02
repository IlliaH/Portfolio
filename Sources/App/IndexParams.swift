//
//  IndexParams.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-09-01.
//

import Foundation

internal struct IndexParams: Encodable {
    // MARK: Properties
    internal let title: String
    internal let body: String
    internal let workExamples: [WorkExample]
}
