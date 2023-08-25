//
//  CustomModelBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/8/23.
//

import SwiftUI

struct User: Identifiable {
    let displayName: String
    let followerCount: Int
    let id: String
    let userName: String
}

struct CustomModelBootcamp: View {
    @State var users = [
        User(
            displayName: "Nick",
            followerCount: 100,
            id: UUID().uuidString,
            userName: "nick123"
        ),
        User(
            displayName: "Emily",
            followerCount: 58,
            id: UUID().uuidString,
            userName: "itsemily"
        ),
        User(
            displayName: "Samantha",
            followerCount: 310,
            id: UUID().uuidString,
            userName: "sam"
        ),
        User(
            displayName: "Chris",
            followerCount: 88,
            id: UUID().uuidString,
            userName: "chris1987"
        )
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 13) {
                        Circle()
                            .frame(
                                width: 40,
                                height: 40
                            )
                        
                        VStack {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(
                        .vertical,
                        13
                    )
                }
            }
        }
    }
}

struct CustomModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomModelBootcamp()
    }
}
