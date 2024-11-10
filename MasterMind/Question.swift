//
//  Question.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation

struct Question: Identifiable, Decodable {
    var id: String
//    var answers: [Answer]
    var answers: [String]
    var correct: Int
    var question: String
}

struct Answer: Decodable {
    var answer: String
}
