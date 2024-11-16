//
//  UserModel.swift
//  WorkoutPlan
//
//  Created by Christian Polka on 11/16/24.
//

import Foundation

struct UserModel : Identifiable, Codable {
    
    var id : String
    var email: String
    var name : String
    
}
