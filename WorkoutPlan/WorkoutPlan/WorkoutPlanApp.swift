//
//  WorkoutPlanApp.swift
//  WorkoutPlan
//
//  Created by Christian Polka on 11/16/24.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct WorkoutPlanApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authApp = AuthenticationViewModel()
    
    var body: some Scene {
        WindowGroup {
            if authApp.userSession == nil {
                LoginView()
                    .environmentObject(authApp)
            } else {
                UserHomeView()
                    .environmentObject(authApp)
            }
        }
    }
}
