//
//  ContentMaker.swift
//  App
//
//  Created by  Ilia Goncharenko on 2021-09-02.
//

import Foundation

internal enum ContentMaker {
    // MARK: Making
    internal static func makeIndexParams() -> IndexParams {
        return IndexParams(
            title: "Illia Honcharenko",
            aboutMeText: makeAboutMeText(),
            bidvineExperienceText: makeBidvineExperienceText(),
            workExamples: makeWorkExamplesContent(),
            projectExamples: makeProjectExamplesContent()
        )
    }
    
    private static func makeAboutMeText() -> String {
        return "I am an experienced iOS developer with 2 years of commercial work experience in dynamic and deadline-driven work environments.  I am an extremely focused and ambitious individual with the ability to learn swiftly opting to settle for nothing less than excellence. I have developed a good understanding of agile methodologies while working at my previous company. I find passion in developing iOS apps of all scales."
    }
    
    private static func makeBidvineExperienceText() -> String {
        return "During my time at Bidvine I had the opportunity to grow as a developer, I was responsible for the development, maintenance of iOS applications, and their integration with back-end services. I worked alongside other engineers developing different layers of the applications.  I was involved in the process of converting the entire pro app from MVC to MVVM, rewriting a customer app, and creating sophisticated design."
    }
    
    private static func makeWorkExamplesContent() -> [WorkExample] {
        return [
            WorkExample(
                index: 1,
                video: "/videos/InsightsMP4.mp4",
                bgColor: "#E0FAE7",
                topText: "Insights screen shows professional’s statistics based on different data that Bidvine collected. I was responsible for rebuilding the entire screen and this is what this task involved:",
                listItems: [
                    "Showing web views while keeping users logged in.",
                    "Laying out inline content, taking into consideration the fact that values can be multiline.",
                    "Performing service sorting without experiencing table view glitches.",
                    "Redirecting users to other view controllers.",
                    "Working with attributed string to achieve colored text."
                ],
                bottomText: "Old codebase wasn’t scalable as view controller basically contained all code, had memory leaks, was gigantic, and slow. After rebuilding the screen, we were able to extend functionality easily."
            ),
            WorkExample(
                index: 2,
                video: "/videos/BidInsightsMP4.mp4",
                bgColor: "#FFF8BC",
                topText: "Bid Insights feature showed the comparison between a current professional and other people who submitted a bid. Also, it was designed to be paid feature, as a result I had to handle different screen states. The existing code was beyond any repair. There were some difficulties that I encountered while implementing this screen:",
                listItems: [
                    "Some parts of text were tappable, so I had to come up with the custom UI component as iOS doesn’t support it by default.",
                    "To avoid duplicated code, I wrote generic code for Summary tab as those sections had a lot in common.",
                    "Professionals, who didn’t have this feature had an ability to go to the web payment screen to purchase it and after closing web view, changes were applied to UI.",
                    "Timeline tab had complex UI as there were components, which must be aligned horizontally and vertically to display information properly.",
                    "I had to read React Native code to understand all requirements."
                ],
                bottomText: "Overall, implementing this screen gave me significant knowledge and techniques. I learned how to efficiently break big task down into small subtasks to achieve desired goal."
            ),
            WorkExample(
                index: 3,
                video: "/videos/PaymentMethodsMP4.mp4",
                bgColor: "#FFE9E3",
                topText: "Payment methods screen allowed professionals to add credit cards or PayPal to pay for the contact with the customer. Initially, it was just a web view and our primary task was to reduce number of web views, so I was assigned to turn it into the native screen. Some of the challenges that I faced:",
                listItems: [
                    "Table view cells had an async state because we can’t guarantee that API calls will be always successful.",
                    "Error-handling different scenarios such as removing default payment method and adding invalid payment methods.",
                    "Adapting layout for small screens as well as large ones.",
                    "Transitioning between screen states."
                ],
                bottomText: "Ultimately, I gained experience in handling async UI as well as improved my error-handling skills."
            )
        ]
    }
    
    private static func makeProjectExamplesContent() -> [ProjectExample] {
        return [
            ProjectExample(
                index: 4,
                video: "/videos/smokin_proj.MP4",
                bgColor: "#C7D4F6",
                topText: "Quit smoke app is designed to help people cut down smoking. It has some paid content, which becomes available after purchasing weekly subscription, so managing global app state properly was essential. While working on this app I sharpened my skills at reactive programming, got familiar with in app purchases, and submitted an app to AppStore.",
                bottomText: "Note: all design decisions were made by other people as it was my freelance job."
            )
        ]
    }
}
