//
//  ButtonModifier.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/11/24.
//

import SwiftUI

struct Constants {
    static let primayButtonColor = Color(red: 200/255, green: 214/255, blue: 214/255)
    static let previousButonColor = Color.blue
}

struct ButtonModifier: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 400, height: 25)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(color)
            )
            .foregroundColor(.black)
    }
}

struct QuizAnswerChoiceButton: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .frame(width: 350, height: 25)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.vertical, 4)
    }
}
