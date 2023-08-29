//
//  OnboardingView.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 28/8/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var onboardingState = 0
    @State private var nameTextFieldText = ""
    @State private var age: Double = 58
    @State private var gender = ""
    @State private var alertTitle = ""
    @State private var showAlert = false
    
    @AppStorage("currentUserName") var currentUserName: String?
    @AppStorage("currentUserAge") var currentUserAge: Int?
    @AppStorage("currentUserGender") var currentUserGender: String?
    @AppStorage("signed_in") var isUserSignedIn = false
    
    private let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )

    var body: some View {
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                    
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 26)
                        .foregroundColor(.green)
                }
            }
            
            VStack {
                Spacer()
                loginButton
                
            }
            .padding(31)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}

// MARK: - Components

private extension OnboardingView {
    var loginButton: some View {
        Text(onboardingState == 0 ? "Sign Up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(13)
            .animation(nil)
            .onTapGesture {
                nextButtonPressed()
            }
    }
   
    var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(
                    width: 200,
                    height: 200
                )
            
            Text("Hello!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 4)
                        .offset(y: 6)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("This is the best app in whole App Store!")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(31)
    }
        
    var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Fill in your name!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField(
                "Please fill in your name here...",
                text: $nameTextFieldText
            )
            .font(.headline)
            .frame(height: 58)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(13)
            
            Spacer()
            Spacer()
        }
        .padding(31)
    }
    
    var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Fill in your age!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
            .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(31)
    }
    
    var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Fill in your gender!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(
                selection: $gender) {
                    Text("Non Binary").tag("Non Binary")
                    Text("Female").tag("Female")
                    Text("Male").tag("Male")
                } label: {
                    Text(gender != "" ? gender : "Choose your gender")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(height: 58)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(13)
                }
                .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
        .padding(31)
    }
    
    func nextButtonPressed() {
        switch onboardingState {
        case 1:
            guard nameTextFieldText != "" else {
                showAlert(alertTitle: "Your name shouldn't be empty")
                
                return
            }
            
        case 3:
            guard gender != "" else {
                showAlert(alertTitle: "Please choose a gender before moving forward")
                
                return
            }
            
        default:
            break
        }
        
        if onboardingState == 3 {
            login()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func login() {
        currentUserName = nameTextFieldText
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            isUserSignedIn = true
        }
    }
    
    func showAlert(alertTitle: String) {
        self.alertTitle = alertTitle
        showAlert.toggle()
    }
}
