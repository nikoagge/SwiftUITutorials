//
//  ScrollViewBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 5/7/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 24)
                                    .fill(.white)
                                    .frame(width: 220, height: 220)
                                    .shadow(radius: 13)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
