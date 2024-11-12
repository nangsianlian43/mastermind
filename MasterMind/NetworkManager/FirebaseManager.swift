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
    
    let db = Firestore.firestore().collection("Questions")
    
    var questions: [Question] = []
    
    init() {
        fetchQuestions()
        print("FirebaseManager: \(questions.count)")
    }
    
    func fetchQuestions() {
//        db.getDocuments { snapshot, error in
//            if let error {
//                print("Error fetching questions: \(error)")
//                return
//            }
//            
//            guard let snapshot else { return }
//            
//            self.questions = snapshot.documents.compactMap { document in
//                do {
//                    let data = try document.data(as: Question.self)
//                    return data
//                } catch {
//                    print("Error decoding question: \(error.localizedDescription)")
//                }
//                return nil
//            }
//        }
        db.getDocuments { snapshot, error in
            guard let documents = snapshot?.documents else {
                guard let error else { return }
                print("Error fetching questions: \(error.localizedDescription)")
                return
            }
            
            for document in documents {
//                do {
//                    let question = try document.data(as: Question.self)
//                    self.questions.append(question)
//                    print("Question: \(question)")
//                } catch {
//                    print("Error decoding question: \(error.localizedDescription)")
//                }
                let answers = document.data()["answers"] as? [String] ?? []
                let correct = document.data()["correct"] as? Int ?? 0
                let question = document.data()["question"] as? String ?? ""
                
                let data = Question(answers: answers, correct: correct, question: question)
                print("Question: \(data)")
                self.questions.append(data)
                
            }
        }
    }
}
