//
//  IfLetGuardBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/8/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var currentUserId: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool? = nil

    var body: some View {
        NavigationView {
            VStack {
                Text("We 're promoting safe code!")
                
                if let displayText = displayText {
                    Text(displayText)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding for the win!")
            .onAppear {
                anotherLoadData()
            }
        }
    }
    
    func loadData() {
        if let currentUserId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                displayText = "New data and user id: \(currentUserId)"
                isLoading = false
            }
        } else {
            displayText = "Error!"
        }
    }
    
    func anotherLoadData() {
        guard let currentUserId = currentUserId else {
            displayText = "Error, no user id!"
            
            return
        }
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            displayText = "New Data and user id: \(currentUserId)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
