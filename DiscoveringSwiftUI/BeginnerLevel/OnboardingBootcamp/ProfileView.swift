//
//  ProfileView.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 29/8/23.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("currentUserName") var currentUserName: String?
    @AppStorage("currentUserAge") var currentUserAge: Int?
    @AppStorage("currentUserGender") var currentUserGender: String?
    @AppStorage("signed_in") var isUserSignedIn = false
    
    var body: some View {
        VStack(spacing: 22) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(
                    width: 130,
                    height: 130
                )
            
            Text(currentUserName ?? "Sample Name")
            
            Text("This user is \(currentUserAge ?? 0) years old.")
            
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("Sign Out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 58)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(13)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.red)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(13)
        .shadow(radius: 13)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            isUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
