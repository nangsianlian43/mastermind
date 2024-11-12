//
//  ButtonModifier.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/11/24.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 400, height: 25)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 200/255, green: 214/255, blue: 214/255))
            )
            .foregroundColor(.black)
    }
}

struct QuizAnswerChoiceButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 350, height: 25)
            .padding()
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.vertical, 4)
    }
}
