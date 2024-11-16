//
//  ExerciseModel.swift
//  WorkoutPlan
//
//  Created by Christian Polka on 11/16/24.
//

import Foundation
import FirebaseFirestore

struct ExerciseModel : Codable, Identifiable {
    
    @DocumentID var id: String?
    var exerciseName: String
    var exerciseType: String
    var muscleGroup: String
    
}
