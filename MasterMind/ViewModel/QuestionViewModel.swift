//
//  QuestionViewModel.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import Foundation
import FirebaseFirestore

@MainActor
class QuestionViewModel: ObservableObject {
    @Published var questions = [Question]()
   
    let manager = FirebaseManager()
    
    func getQuestion() async {
        do {
            try await manager.fetchDatabase(text: "Questions")
            self.questions = manager.questions.shuffled()
        } catch  {
            print(error.localizedDescription)
        }
    }
}
