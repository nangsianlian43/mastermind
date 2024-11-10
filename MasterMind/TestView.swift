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
                    
                        Text("Choose One")
                        .font(.system(size: 23))
                        .bold()
//                        List(question.answers, id: \.self) { ans in
//                            VStack {
//                                Text("Answer: \(ans)")
//                            }
//                        }
//                        VStack {
//                            List(question.answers, id: \.self) { ans in
//
//
//                                Text(ans)
//                            }
                
                    AnswerListView(answers: question.answers)
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
