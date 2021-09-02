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
    internal let aboutMeText: String
    internal let bidvineExperienceText: String
    internal let workExamples: [WorkExample]
    internal let projectExamples: [ProjectExample]
}
