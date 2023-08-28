//
//  AppStorageBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 28/8/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 22) {
            Text(currentUserName ?? "Add Name Here")
            
            if let currentUserName = currentUserName {
                Text(currentUserName)
            }
                        
            Button("Save".uppercased()) {
                currentUserName = "Nikolas"
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
