//
//  Question.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation
import FirebaseFirestore

struct Question: Identifiable, Decodable {
    @DocumentID var id: String?
    var answers: [String]
    var correct: Int
    var question: String
}

struct Answer: Decodable {
    var answer: String
}
