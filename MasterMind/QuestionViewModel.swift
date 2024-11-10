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
                    print("Fetch Error")
                    return
                }
                
//                documents.map { documentQuery in
//                    let data = documentQuery.data()
//                    
//                    let decoded = JSONDecoder.decode(Question.self, from: data)
//                    
//                    
//                }
                
               
                self.questions = documents.map { documentSnapShot in
                    let data = documentSnapShot.data()
//                    print(data["answers"] ?? [])
//                    print(data["question"] ?? "")
                    let answersList = data["answers"] as? [String] ?? []
                    let answers = answersList.map { ans in
                        return ans
                    }
                    let question = data["question"] as? String ?? ""
                    let correct = data["correct"] as? Int ?? 0
                    
                    return Question(id: UUID().uuidString, answers: answers, correct: correct, question: question)
                }
                
//               documents.map { documentSnapShot in
//                                   let data = documentSnapShot.data()
//                   let answers = data["answers"] as? [String] ?? []
//            
//                   answers.map({ ans in
//                       print(ans)
//                   })
                                
//                                   print(data["question"] ?? "")
//                                   let answers = data["answers"] as? [String] ?? []
//                                   let question = data["question"] as? String ?? ""
//                                   let correct = data["correct"] as? Int ?? 0
//               
//                                   return Question(id: UUID().uuidString, answers: answers, correct: correct, question: question)
                    }
                
            }
        }

