//
//  ConditionalBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 14/7/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle = false
    @State var showRectangle = false
    @State var isLoading = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 130, height: 130)
            } else if showRectangle {
                Rectangle()
                    .frame(width: 130, height: 130)
            } else {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 200, height: 130)
            }
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
