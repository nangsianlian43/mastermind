//
//  QuestionViewModel.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation
import FirebaseFirestore

class QuestionViewModel: ObservableObject {
    @Published var questions = [Question]()
    private let db = Firestore.firestore().collection("Questions")
    
    init() {
        getData()
    }
    
    func getData() {
        db.getDocuments { snapshot, error in
            if let error = error {
                print("Error fetching questions: \(error.localizedDescription)")
                return
            }
            
            if let snapShot = snapshot {
                // Run Asynchronous
                DispatchQueue.main.async {
                    // get all the docuemnts from Questions collection
                    self.questions = snapShot.documents.map { document in
                        let answers = document.data()["answers"] as? [String] ?? []
                        let correct = document.data()["correct"] as? Int ?? 0
                        let question = document.data()["question"] as? String ?? ""
                        
                        let data = Question(id: document.documentID ,answers: answers, correct: correct, question: question)
//                        print("Question From ViewModel: \(data)")
                        return data
                    }
                }
                
            }
        }
    }
    
    static func preview() -> QuestionViewModel {
        let viewModel = QuestionViewModel()
        viewModel.questions = Question.example
        return viewModel
    }
}
