//
//  ContentView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        TabView {
            NavigationStack {
                ScrollView {
                    VStack {
                        VStack(spacing: 20) {
                            
                            // Our Story
                            NavigationLink(destination: OurStoryView()) {
                                Text("Our Story")
                                    .modifier(ButtonModifier())
                                
                            }
                            
                            // Our Team
                            NavigationLink(destination: OurTeamView()) {
                                Text("Our Team")
                                    .modifier(ButtonModifier())
                            }
                            
                            // Contacts
                            NavigationLink(destination: ContactsView()) {
                                Text("Contacts")
                                    .modifier(ButtonModifier())
                            }
                            
                            // Social Media
                            NavigationLink(destination: SocialMediaView()) {
                                Text("Social Media")
                                    .modifier(ButtonModifier())
                            }
                        }
                        .padding(.vertical, 20)
                        
                        Text("Different Programs")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 28))
                            .bold()
                            .padding(.leading, 85)
                        
                        HStack {
                            VStack {
                                Programs(programImage: "Group1")
                            }
                        }
                        .ignoresSafeArea()
                    }
                    .searchable(text: $searchText)
                    .navigationBarTitle("HOME")
                    .navigationBarItems(trailing: Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .opacity(0.3))
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            // Game Tab with Quiz
            NavigationStack {
                QuizView()  // Add QuizView inside the NavigationStack
                    .navigationBarTitle("Quiz Game", displayMode: .inline)  // Set the navigation bar title here
            }
            .tabItem {
                Image(systemName: "gamecontroller.fill")
                Text("Game")
            }
            
            // Book Tab with PDFViewer
            Image("2024 MM Fall Citizen Booklet Edition")
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
