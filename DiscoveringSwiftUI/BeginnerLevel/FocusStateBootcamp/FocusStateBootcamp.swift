//
//  FocusStateBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 30/8/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    enum OnboardingTextFieldsInFocus {
        case username
        case password
    }
    
    @FocusState private var onboardingTextFieldInFocus: OnboardingTextFieldsInFocus?
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 31) {
            TextField(
                "Please add your name",
                text: $username
            )
            .focused(
                $onboardingTextFieldInFocus,
                equals: .username
            )
//            .focused($usernameInFocus)
            .padding(.leading)
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.4))
            .cornerRadius(13)
            
            SecureField(
                "Please add your password",
                text: $password
            )
            .focused(
                $onboardingTextFieldInFocus,
                equals: .password
            )
//            .focused($passwordInFocus)
            .padding(.leading)
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.4))
            .cornerRadius(13)
            
            Button("Sign Up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    debugPrint("Sign Up")
                } else if usernameIsValid {
                    onboardingTextFieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    onboardingTextFieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
