//
//  TestView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/10/24.
//

import SwiftUI
import FirebaseFirestore

struct TestView: View {
    @StateObject private var viewModel = QuestionViewModel()
    
    var body: some View {
        VStack{
            Text("Lists")
            List(viewModel.questions) { question in
                VStack {
                    Text("Question: \(question.question)")
                
                    VStack(alignment: .leading) {
                        ForEach(question.answers, id: \.self) { ans in
                                Text(ans)
                        }
                    }
                    
                    Text("The correct Ans is: \(question.answers[question.correct])")
                }
            }
        }
        .onAppear() {
            self.viewModel.fetchQuestions()
        }
    }
}

#Preview {
    TestView()
}
