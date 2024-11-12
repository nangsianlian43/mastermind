//
//  TestView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import SwiftUI
import FirebaseFirestore

struct TestView: View {
    
    
    @ObservedObject var questionViewModel = QuestionViewModel()
    
    var body: some View {
        VStack{
            Text("Lists")
            List(questionViewModel.questions) { question in
                VStack {
                    Text("Question: \(question.question)")
                        .font(.title)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        ForEach(question.answers, id: \.self) { ans in
                            Text(ans)
                                .modifier(QuizAnswerChoiceButton())
                        }
                    }
                }
            }
        }
        .onAppear {
            questionViewModel.getData()
        }
    }
}

#Preview {
    TestView()
}
