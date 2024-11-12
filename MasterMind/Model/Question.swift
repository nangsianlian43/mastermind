//
//  Question.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation

struct Question: Identifiable, Decodable {
   var id: String?
    var answers: [String]
    var correct: Int
    var question: String
    
#if DEBUG
    static let example = [Question(answers: ["a","b","c","d"], correct: 1, question: "What is the correct answer")]
#endif
    
}
