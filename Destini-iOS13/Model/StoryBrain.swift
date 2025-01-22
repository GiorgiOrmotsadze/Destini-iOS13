//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0

    let stories = [
        Story(
            title: "You see a fork in the road.",
            choice1: "Take a left.", choice1Destination: 1,
            choice2: "Take a right.", choice2Destination: 2
        ),
        Story(
            title: "You see a river.",
            choice1: "Swim across.", choice1Destination: 3,
            choice2: "Build a raft.", choice2Destination: 3
        ),
        Story(
            title: "You meet a wise old man.",
            choice1: "Listen to his story.", choice1Destination: 0,
            choice2: "Ignore him.", choice2Destination: 0
        )
    ]

    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }

    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }

    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }

    mutating func nextStory(userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
        if storyNumber >= stories.count {
            storyNumber = 0
        }
    }
}

