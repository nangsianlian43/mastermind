//
//  HomeView.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    
                    // Our Story
                    NavigationLink(destination: OurStoryView()) {
                        Text("Our Story")
                            .modifier(ButtonModifier(color: Constants.primayButtonColor))
                        
                    }
                    
                    // Our Team
                    NavigationLink(destination: OurTeamView()) {
                        Text("Our Team")
                            .modifier(ButtonModifier(color: Constants.primayButtonColor))
                    }
                    
                    // Contacts
                    NavigationLink(destination: ContactsView()) {
                        Text("Contacts")
                            .modifier(ButtonModifier(color: Constants.primayButtonColor))
                    }
                    
                    // Social Media
                    NavigationLink(destination: SocialMediaView()) {
                        Text("Social Media")
                            .modifier(ButtonModifier(color: Constants.primayButtonColor))
                    }
                    
                    Text("Different Programs")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 28))
                        .bold()
                        .padding(.leading, 85)
                    
                    //                    Programs(programImage: "Group1")
                    ZStack(alignment: .bottom) {
                        Image("Group1")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(20)
                        Text("Citizenship Program")
                            .font(.system(size: 15))
                            .foregroundStyle(.white)
                            .bold()
                            .padding(.bottom, 10)
                    }
                    .padding(.horizontal, 20)
                }
            }
            .searchable(text: $searchText)
            .navigationBarTitle("HOME")
            .navigationBarItems(trailing: Image(systemName: "bell.fill"))
        }
    }
}

#Preview {
    HomeView()
}
