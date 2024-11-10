//
//  MasterMindApp.swift
//  MasterMind
//
//  Created by Nang Lian on 11/6/24.
//

import SwiftUI
import FirebaseCore
import FirebaseDatabase

class AppDelegate: NSObject, UIApplicationDelegate {
    var ref: DatabaseReference!
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
     
      
      ref = Database.database().reference()

    return true
  }
}



@main
struct MasterMindApp: App {
    
    // register app delegate for Firebase setup
    init() {
        FirebaseApp.configure()
    }
//      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate


    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
