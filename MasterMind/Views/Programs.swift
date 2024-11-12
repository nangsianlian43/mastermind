//
//  Programs.swift
//  MasterMind
//
//  Created by Nang Lian on 11/7/24.
//

import SwiftUI

struct Programs: View {
    
    var programImage: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                    .frame(height: 150)
                    .padding(.all, 10)
                Image(programImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding(10)
                Text("Citizenship Program")
                    .font(.system(size: 15))
                    .foregroundStyle(.white)
                    .bold()
                    .padding(.bottom, 20)
            }
        }
    }
}

struct Programs_Previews: PreviewProvider {
    static var previews: some View {
        Programs(programImage: "Group1")
    }
}
