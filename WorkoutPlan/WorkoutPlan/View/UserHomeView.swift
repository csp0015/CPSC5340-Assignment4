//
//  UserHomeView.swift
//  WorkoutPlan
//
//  Created by Christian Polka on 11/16/24.
//

import SwiftUI

struct UserHomeView: View {
    
    @EnvironmentObject var authApp : AuthenticationViewModel
    
    var body: some View {
    
        NavigationView {
            VStack{
                Text("Christian's Workout Plan")
                    .padding(.vertical, 15)
                    .frame(width: UIScreen.main.bounds.width)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                Text("Welcome, \(authApp.currentUser?.name ?? "User")")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
                
                List {
                    Section("Exercise Tracking") {
                        NavigationLink {
                            NewWorkoutView()
                        } label: {
                            Text("Plan New Workout")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                        NavigationLink {
                            WorkoutHistoryView()
                        } label: {
                            Text("View Previous Workouts")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                        NavigationLink {
                            ExerciseView()
                        } label: {
                            Text("View Exercises")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                    }.font(.system(size: 16))
                        .foregroundColor(.black)
                    Section("Account Options") {
                        Button {
                            authApp.signOut()
                        } label: {
                            Text("Sign Out")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                    }.font(.system(size: 16))
                        .foregroundColor(.black)
                    
                }
            }
        }
        Spacer()
    }
}
