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
        let workExamples = [
            WorkExample(
                video: "/videos/InsightsMP4.mp4",
                bgColor: "#E0FAE7",
                topText: "Insights screen shows professional’s statistics based on different data that Bidvine collected. I was responsible for rebuilding the entire screen and this is what this task involved:",
                bulletPointPhrases: [
                    "showing web views while keeping users logged in",
                    "laying out inline content, taking into consideration the fact that values can be multiline",
                    "performing service sorting without experiencing table view glitches",
                    "redirecting users to other view controllers",
                    "working with attributed string to achieve colored text"
                ],
                bottomText: "Old codebase wasn’t scalable as view controller basically contained all code, had memory leaks, was gigantic, and slow. After rebuilding the screen, we were able to extend functionality easily."
            ),
            WorkExample(
                video: "/videos/BidInsightsMP4.mp4",
                bgColor: "#FFF8BC",
                topText: "Bid Insights feature showed the comparison between a current professional and other people who submitted a bid. Also, it was designed to be paid feature, as a result I had to handle different screen states. The existing code was beyond any repair. There were some difficulties that I encountered while implementing this screen:",
                bulletPointPhrases: [
                    "some parts of text were tappable, so I had to come up with custom UI component as iOS doesn’t support it by default",
                    "to avoid duplicated code, I wrote generic code for Summary tab as those sections had a lot in common.",
                    "Professionals, who didn’t have this feature had an ability to go to the web payment screen to purchase it and after closing web view, changes were applied to UI.",
                    "Timeline tab had complex UI as there were components, which must be aligned horizontally and vertically to display information properly.",
                    "I had to read React Native code to understand all requirements."
                ],
                bottomText: "Overall, implementing this screen gave me significant knowledge and techniques. I learned how to efficiently break big task down into small subtasks to achieve desired goal."
            ),
            WorkExample(
                video: "/videos/PaymentMethodsMP4.mp4",
                bgColor: "#FFE9E3",
                topText: "Payment methods screen allowed professionals to add credit cards or PayPal to pay for the contact with the customer. Initially, it was just a web view and our primary task was to reduce number of web views, so I was assigned to turn it into native screen. Some of the challenges that I faced:",
                bulletPointPhrases: [
                    "Table view cells had an async state because we can’t guarantee that API calls will be always successful.",
                    "Error-handling different scenarios such as removing default payment method and adding invalid payment methods.",
                    "Adapting layout for small screens as well as large ones.",
                    "Transitioning between screen states."
                ],
                bottomText: "Ultimately, I gained experience in handling async UI as well as improved my error-handling skills."
            )
        ]
        
        let indexParams = IndexParams(
            title: "Illia Honcharenko",
            body: "Hi there, welcome to my awesome page!",
            workExamples: workExamples
        )

        return req.leaf.render("work_example", indexParams)
    }
}
