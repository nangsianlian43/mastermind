//
//  QuestionViewModel.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation
import FirebaseFirestore

class QuestionViewModel: ObservableObject {
    @Published var questions: [Question] = []
    private var db = Firestore.firestore()
    
    func fetchQuestions() {
        
        db.collection("Questions").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                guard let error else { return }
                print("Fetch Error: \(error.localizedDescription)")
                return
            }
            for document in documents {
                let ques = Question(answers: document.data()["answers"] as? [String] ?? [], correct: document.data()["correct"] as? Int ?? 0, question: document.data()["question"] as? String ?? "")
                self.questions.append(ques)
            }
            
        }
    }
    
}
