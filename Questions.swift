//
//  Questions.swift
//  Trivia
//
//  Created by Eric Zheng on 10/6/23.
//

import Foundation
import UIKit

struct Question {
    let category: Category
    let question: String
    let answers: [String]
    let correctAnswer: Int
}

enum Category {
    case basketball
    case football
    case soccer
    
    var description: String {
        switch self{
        case .basketball:
            return "Basketball"
        case .football:
            return "Football"
        case .soccer:
            return "Soccer"
        }
    }
}
