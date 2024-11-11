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
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                    .frame(width: 150, height: 150)
                Image(programImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.all, 10)
                    .offset(y: -15)
                Text("Citizenship Program")
                    .font(.system(size: 15))
                    .bold()
                    .scaledToFit()
                    .frame(width: 200, height: 50)
                    .padding(.all, 10)
                    .offset(x: 0, y:50)
                
                
            }
        }
    }
}

struct Programs_Previews: PreviewProvider {
    static var previews: some View {
        Programs(programImage: "")
    }
}
