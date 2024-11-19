//
//  FirebaseManager.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

class FirebaseManager {
    static let shared = FirebaseManager()
    
    var questions: [Question] = []
    
    func fetchDatabase(text: String) async throws {
        let snapShot = try await Firestore.firestore().collection(text).getDocuments()
        for document in snapShot.documents {
            let data = try document.data(as: Question.self)
            questions.append(data)
        }
    }
}
