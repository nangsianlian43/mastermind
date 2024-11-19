//
//  QuizViewWithUpdate.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI

struct QuizViewWithUpdate: View {
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswers = [""]// Array to store answers for each question
    @State private var score = 0
    @State private var isQuizFinished = false
    
    
    @ObservedObject var questionViewModel = QuestionViewModel()
    var body: some View {
        NavigationView {
            ZStack {
                if questionViewModel.questions.isEmpty {
                    ProgressView()
                } else {
                    VStack{
                        Text("Question \(questionViewModel.questions[currentQuestionIndex].question)")
                            .font(.title)
                            .padding()
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            ForEach(questionViewModel.questions[currentQuestionIndex].answers, id: \.self ) { ans in
                                Button {
                                    selectedAnswers[currentQuestionIndex] = ans
                                } label: {
                                    Text(ans)
                                        .modifier(QuizAnswerChoiceButton(color: selectedAnswers.contains(ans) ? .blue : .secondary))
                                }
                                
                            }
                        }
                        
                        Spacer()
                        
                        HStack {
                            Button{
                                currentQuestionIndex -= 1
                            } label: {
                                Text("Previous")
                                    .foregroundStyle(.white)
                                    .cornerRadius(10)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(currentQuestionIndex == 0 ? Color.gray : .blue)
                                    .cornerRadius(10)
                                
                            }
                            .disabled(currentQuestionIndex == 0)
                            
                            Button{
                                checkAnswer()
                                currentQuestionIndex += 1
                            } label: {
                                Text("Next")
                                    .foregroundStyle(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(currentQuestionIndex == questionViewModel.questions.count - 1 ? Color.gray : .green)
                                    .cornerRadius(10)
                            }
                            .disabled(currentQuestionIndex >= questionViewModel.questions.count - 1)
                        }
                        .padding()
                    }
                    .padding(.vertical)
                }
            }
            .navigationTitle("Quiz")
            .task {
                await questionViewModel.getQuestion()
                for _ in questionViewModel.questions { selectedAnswers.append("")}
            }
        }
    }
    
    private func checkAnswer() {
        let index = questionViewModel.questions[currentQuestionIndex].correct
        let correctAns = questionViewModel.questions[currentQuestionIndex].answers[index]
        if correctAns.lowercased() == (selectedAnswers[currentQuestionIndex].lowercased()) {
            score += 1
        }
    }
}

#Preview {
    QuizViewWithUpdate()
}
