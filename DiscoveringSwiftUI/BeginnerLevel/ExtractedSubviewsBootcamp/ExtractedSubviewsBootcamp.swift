//
//  ExtractedSubviewsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 14/7/23.
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ExtractedSubview(
                title: "Apples",
                count: 13,
                color: .pink
            )
            
            ExtractedSubview(
                title: "Oranges",
                count: 3,
                color: .red
            )
            
            ExtractedSubview(
                title: "Oranges",
                count: 42,
                color: .green
            )
        }
    }
}

struct ExtractedSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviewsBootcamp()
    }
}

struct ExtractedSubview: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(13)
    }
}
