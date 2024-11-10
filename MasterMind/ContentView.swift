//
//  ContentView.swift
//  MasterMind
//
//  Created by Nang Lian on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""


//        @State private var questions = []()
    
    

    var body: some View {
        TestView()
//        TabView {
//            NavigationStack {
//                ScrollView {
//                    VStack {
//                        VStack(spacing: 20) {
//                            
//                            // Our Story
//                            NavigationLink(destination: OurStoryView()) {
//                                Text("Our Story")
//                                    .scaledToFit()
//                                    .frame(width: 400, height: 25)
//                                    .padding()
//                                    .background(
//                                        RoundedRectangle(cornerRadius: 8)
//                                            .fill(Color(red: 200/255, green: 214/255, blue: 214/255))
//                                    )
//                                    .foregroundColor(.black)
//                            }
//                            
//                            // Our Team
//                            NavigationLink(destination: OurTeamView()) {
//                                Text("Our Team")
//                                    .scaledToFit()
//                                    .frame(width: 400, height: 25)
//                                    .padding()
//                                    .background(
//                                        RoundedRectangle(cornerRadius: 8)
//                                            .fill(Color(red: 200/255, green: 214/255, blue: 214/255))
//                                    )
//                                    .foregroundColor(.black)
//                            }
//                            
//                            // Contacts
//                            NavigationLink(destination: ContactsView()) {
//                                Text("Contacts")
//                                    .scaledToFit()
//                                    .frame(width: 400, height: 25)
//                                    .padding()
//                                    .background(
//                                        RoundedRectangle(cornerRadius: 8)
//                                            .fill(Color(red: 200/255, green: 214/255, blue: 214/255))
//                                    )
//                                    .foregroundColor(.black)
//                            }
//                            
//                            // Social Media
//                            NavigationLink(destination: SocialMediaView()) {
//                                Text("Social Media")
//                                    .scaledToFit()
//                                    .frame(width: 400, height: 25)
//                                    .padding()
//                                    .background(
//                                        RoundedRectangle(cornerRadius: 8)
//                                            .fill(Color(red: 200/255, green: 214/255, blue: 214/255))
//                                    )
//                                    .foregroundColor(.black)
//                            }
//                        }
//                        .padding(.vertical, 20)
//                        
//                        Text("Different Programs")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .font(.system(size: 28))
//                            .bold()
//                            .padding(.leading, 85)
//                        
//                        HStack {
//                            VStack {
//                                Programs(programImage: "Group1")
//                            }
//                        }
//                        .ignoresSafeArea()
//                    }
//                                        .searchable(text: $searchText)
//                                        .navigationBarTitle("HOME")
//                                        .navigationBarItems(trailing: Image(systemName: "bell.fill")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 30, height: 30)
//                                            .opacity(0.3))
//                                    }
//                                }
//                                .tabItem {
//                                    Image(systemName: "house.fill")
//                                    Text("Home")
//                                }
//                                
//                                // Game Tab with Quiz
//                                NavigationStack {
//                                    QuizView()  // Add QuizView inside the NavigationStack
//                                        .navigationBarTitle("Quiz Game", displayMode: .inline)  // Set the navigation bar title here
//                                }
//                                .tabItem {
//                                    Image(systemName: "gamecontroller.fill")
//                                    Text("Game")
//                                }
//                                
//                                // Book Tab with PDFViewer
//                                Image("2024 MM Fall Citizen Booklet Edition")
//                                    .tabItem {
//                                        Image(systemName: "book.fill")
//                                        Text("Book")
//                                    }
//                                
//                                // Account Tab
//                                Text("Account")
//                                    .tabItem {
//                                        Image(systemName: "person.fill")
//                                        Text("Account")
//                }
//                                   
//        }
    }
}

// Define each destination view
struct OurStoryView: View {
    var body: some View {
        Text("Welcome to Our Story Page!")
            .font(.largeTitle)
            .padding()
    }
}

struct OurTeamView: View {
    var body: some View {
        Text("Meet Our Team!")
            .font(.largeTitle)
            .padding()
    }
}

struct ContactsView: View {
    var body: some View {
        Text("Get in Touch!")
            .font(.largeTitle)
            .padding()
    }
}

struct SocialMediaView: View {
    var body: some View {
        Text("Follow Us on Social Media!")
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
