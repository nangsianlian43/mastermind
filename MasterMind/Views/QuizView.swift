//
//  QuizView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/8/24.
//
import SwiftUI

struct QuizView: View {
    @State private var questionIndex = 0
    @State private var selectedAnswers: [Int?] // Array to store answers for each question
    @State private var score = 0
    @State private var isQuizFinished = false
    
    // Example questions and answers
    let questions = [
        ("What is the supreme law of the land?",
         ["The Bill of Rights", "The Constitution", "We The People", "Ten Commandments"], 1),
        ("What does the Constitution do?",
         ["Sets up the government", "Reviews Laws", "Vetoes Bill", "Execute the Law"], 0),
        ("The idea of self-government is in the first three words of the Constitution. What are these words?",
         ["Pursuit of Happiness", "Freedom of Speech", "We Love People", "We The People"], 3)
    ]
    
    // State to hold shuffled questions with original indices
    @State private var shuffledQuestions: [(String, [String], Int, Int)] = [] // Added original index
    
    init() {
        _shuffledQuestions = State(initialValue: QuizView.shuffleQuestions(questions))
        _selectedAnswers = State(initialValue: Array(repeating: nil, count: questions.count))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Question \(questionIndex + 1)")
                    .font(.title)
                    .padding()
                
                Text(shuffledQuestions[questionIndex].0)
                    .font(.system(size: 20))
                    .bold()
                    .font(.headline)
                    .padding()
                
                ForEach(0..<shuffledQuestions[questionIndex].1.count, id: \.self) { index in
                    Button(action: {
                        selectedAnswers[questionIndex] = index
                    }) {
                        Text(shuffledQuestions[questionIndex].1[index])
                            .frame(width: 350, height: 25)
                            .padding()
                            .background(selectedAnswers[questionIndex] == index ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.vertical, 4)
                    }
                }
                
                HStack {
                    Button("Previous") {
                        if questionIndex > 0 {
                            questionIndex -= 1
                        }
                    }
                    .padding()
                    .disabled(questionIndex == 0)
                    
                    Spacer()
                    
                    if questionIndex == shuffledQuestions.count - 1 {
                        Button("Submit Answer") {
                            checkAnswer()
                            isQuizFinished = true
                        }
                        .padding()
                        .disabled(selectedAnswers[questionIndex] == nil)
                    } else {
                        Button("Next") {
                            checkAnswer()
                            if questionIndex < shuffledQuestions.count - 1 {
                                questionIndex += 1
                            }
                        }
                        .padding()
                        .disabled(selectedAnswers[questionIndex] == nil)
                    }
                }
                
//                if isQuizFinished {
//                    NavigationLink(destination: ResultsView(score: score, selectedAnswers: selectedAnswers, shuffledQuestions: shuffledQuestions, questions: questions, startOver: startOver)) {
//                        Text("Go to Results")
//                            .padding()
//                            .foregroundColor(.white)
//                            .background(Color.green)
//                            .cornerRadius(8)
//                    }
//                    .padding()
//                }
            }
            .padding()
        }
    }
    
    // Function to check if the answer is correct
    private func checkAnswer() {
        if selectedAnswers[questionIndex] == shuffledQuestions[questionIndex].2 {
            score += 1
        }
    }
    
    // Function to start the quiz over
    private func startOver() {
        questionIndex = 0
        selectedAnswers = Array(repeating: nil, count: questions.count)
        score = 0
        isQuizFinished = false
        shuffledQuestions = QuizView.shuffleQuestions(questions) // Re-shuffle questions
    }
    
    // Shuffle the questions while preserving the original indices
    private static func shuffleQuestions(_ questions: [(String, [String], Int)]) -> [(String, [String], Int, Int)] {
        return questions.enumerated().map { (index, question) in
            (question.0, question.1, question.2, index) // Add original index
        }.shuffled()
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
