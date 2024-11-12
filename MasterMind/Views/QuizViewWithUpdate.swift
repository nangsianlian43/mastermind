//
//  QuizViewWithUpdate.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI

struct QuizViewWithUpdate: View {
    @State private var questionIndex = 0
    @State private var selectedAnswers = [0]// Array to store answers for each question
    @State private var score = 0
    @State private var isQuizFinished = false
    
    @ObservedObject var questionViewModel = QuestionViewModel()
    var body: some View {
        NavigationView {
            VStack{
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
                //                Text(questionViewModel.questions[questionIndex])
                //                    .font(.system(size: 20))
                //                    .bold()
                //                    .font(.headline)
                //                    .padding()
                
                //                ForEach(questionViewModel.questions[questionIndex].answers) { index in
                //                    Button(action: {
                //                        selectedAnswers[questionIndex] = index
                //                    }) {
                //                        Text(questionViewModel.questions[questionIndex].answers[index])
                //                            .frame(width: 350, height: 25)
                //                            .padding()
                //                            .background(selectedAnswers[questionIndex] == index ? Color.blue : Color.gray)
                //                            .foregroundColor(.white)
                //                            .cornerRadius(8)
                //                            .padding(.vertical, 4)
                //                    }
                //                }
                
                //                HStack {
                //                    Button("Previous") {
                //                        if questionIndex > 0 {
                //                            questionIndex -= 1
                //                        }
                //                    }
                //                    .padding()
                //                    .disabled(questionIndex == 0)
                //
                //                    Spacer()
                //                }
                //                .padding()
            }
            .navigationTitle("Quiz")
        }
    }
}

#Preview {
    QuizViewWithUpdate()
}
