//
//  DarkModeBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment( \.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 22) {
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    
                    Text("This color is red")
                        .foregroundColor(.red)
                    
                    Text("This color is blue")
                        .foregroundColor(.blue)
                    
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("DarkModeBootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
