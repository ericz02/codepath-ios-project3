//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Eric Zheng on 10/6/23.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionTag: UILabel!
    
    @IBOutlet weak var categoryTab: UILabel!
    
    @IBOutlet weak var triviaTag: UILabel!
    

    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
//    @IBOutlet weak var correctTag: UILabel!

    private var triviaquestions = [Question]()
    private var selectedQuestionIndex = 0
    private var numCorrect = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        triviaquestions = createMockData()
        configure(with: triviaquestions[selectedQuestionIndex])
        triviaTag.sizeToFit()
    }
    @IBAction func didTapOption1(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }

    @IBAction func didTapOption2(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }

    @IBAction func didTapOption3(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }

    @IBAction func didTapOption4(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }

    private func createMockData() -> [Question] {
        let mockData1 = Question(
                                 category: .basketball,
                                 question: "Who was the youngest NBA player to reach 10,000 points?",
                                 answers: ["Kobe Bryant", "Lebron James", "Michael Jordan", "Kyrie Irving"],
                                 correctAnswer: 1)
        let mockData2 = Question(
                                 category: .football,
                                 question: "Which NFL team has won the most Super Bowl championships as of my last knowledge update in September 2021?",
                                 answers: ["New England Patriots", "Pittsburgh Steelers", "San Francisco 49ers", "Dallas Cowboys"],
                                 correctAnswer: 1)
        let mockData3 = Question(
                                 category: .soccer,
                                 question: "Which country has won the most FIFA World Cup titles on the men's side, and how many times have they won it?",
                                 answers: ["Brazil", "Germany", "Italy", "Argentina"],
                                 correctAnswer: 1)

        return [mockData1, mockData2, mockData3]
    }


    private func configure(with trivia: Question) {
        questionTag.text = "Question: \(selectedQuestionIndex + 1)/\(triviaquestions.count)"
        categoryTab.text = "Category: \(trivia.category.description)"
        triviaTag.text = trivia.question
        triviaTag.adjustsFontSizeToFitWidth = true
        triviaTag.minimumScaleFactor = 0.5
        triviaTag.numberOfLines = 0
        option1.setTitle(trivia.answers[0], for: .normal)
        option2.setTitle(trivia.answers[1], for: .normal)
        option3.setTitle(trivia.answers[2], for: .normal)
        option4.setTitle(trivia.answers[3], for: .normal)
    }
    
    /*
       // MARK: - Navigation
       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       */
}
