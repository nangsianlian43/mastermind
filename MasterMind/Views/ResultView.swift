//
//  ResultView.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI


struct ResultsView: View {
    let score: Int = 0
    let selectedAnswers: [Int?] = [0]
    let shuffledQuestions: [(String, [String], Int, Int)] // Questions with original indices
    let questions: [(String, [String], Int)] // Original questions array
    let startOver: () -> Void
    
    var body: some View {
        VStack {
            Text("Game Over!")
                .font(.largeTitle)
                .padding()
            
            Text("Your score is \(score) / \(questions.count)")
                .font(.title)
                .padding()
            
            // Display the answers selected by the user
            ForEach(0..<selectedAnswers.count, id: \.self) { index in
                let selectedAnswer = selectedAnswers[index]
                let correctAnswer = questions[shuffledQuestions[index].3].2 // Get correct answer from original questions
                let isCorrect = selectedAnswer == correctAnswer
                
                VStack(alignment: .leading) {
                    Text("Question \(index + 1): \(questions[shuffledQuestions[index].3].0)")
                        .bold()
                        .padding(.bottom, 2)
                    
                    Text("Your answer: \(selectedAnswerText(for: index, selectedAnswer: selectedAnswer ?? -1))")
                        .foregroundColor(isCorrect ? .green : .red)
                    
                    Text("Correct answer: \(selectedAnswerText(for: index, selectedAnswer: correctAnswer))")
                        .foregroundColor(isCorrect ? .green : .red)
                        .padding(.bottom, 8)
                }
            }
            
            Button(action: startOver) {
                Text("Start Over")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .navigationBarTitle("Results", displayMode: .inline)
        .padding()
    }
    
    // Helper to get the text of the selected answer
    private func selectedAnswerText(for questionIndex: Int, selectedAnswer: Int) -> String {
        return questions[shuffledQuestions[questionIndex].3].1[selectedAnswer] // Get answer from the original array
    }
}


//#Preview {
//    ResultsView()
//}
