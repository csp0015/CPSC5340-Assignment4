//
//  UserInputFieldView.swift
//  WorkoutPlan
//
//  Created by Christian Polka on 11/16/24.
//

import SwiftUI

struct UserInputFieldView: View {
    
    @Binding var input : String
    let fieldTitle: String
    let fieldDefault : String
    var isSecureField = false
    
    var body: some View {
        VStack (alignment: .leading){
            
            Text(fieldTitle)
                .fontWeight(.bold)
                .padding(.bottom, 0)
            if isSecureField {
                SecureField(fieldDefault, text: $input)
                    .padding(.top, 0)
                    .autocapitalization(.none)
            } else {
                TextField(fieldDefault, text: $input)
                    .padding(.top, 0)
                    .autocapitalization(.none)
            }
        }
        .padding(5)
        .border(Color.gray)
    }
}

#Preview {
    UserInputFieldView(input: .constant(""), fieldTitle: "Email", fieldDefault: "email@email.com")
}
