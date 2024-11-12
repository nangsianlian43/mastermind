//
//  ContentView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            // Home View
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            // Game Tab with Quiz
//            QuizView()  // Add QuizView inside the NavigationStack
            QuizViewWithUpdate()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Game")
                }
            
            // Book Tab with PDFViewer
            PDFContentView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Book")
                }
            
            // Account Tab
            Text("Account")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
