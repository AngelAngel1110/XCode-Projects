//
//  Question.swift
//  FlagQuiz
//
//  Created by Nancy Kansal on 09/09/21.
//

import Foundation

struct Question{
    var countryFlag : String
    var options: [String]
    var answer : String
}

class DataModel{
    var questions: [Question] = []
    
    var answers : [String] = []
    
    var currentQuestionIndex = 0
    
    
    func startQuiz(){
        answers.removeAll()
        currentQuestionIndex = 0
    }
    
    init(){
        questions.append(Question(countryFlag: "🇮🇳", options: ["India", "Japan", "China", "South Korea"], answer: "India"))
        questions.append(Question(countryFlag: "🇲🇾", options: ["France", "Iran", "Malaysia", "India"], answer: "India"))
        questions.append(Question(countryFlag: "🇯🇵", options: ["France", "Japan", "Malaysia", "South Korea"], answer: "Japan"))
        questions.append(Question(countryFlag: "🇸🇬", options: ["Japan", "China", "Singapore", "South Korea"], answer: "India"))
        
    }
}
