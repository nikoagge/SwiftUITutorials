//
//  ViewThatFitsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 10/12/23.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 310)
        .padding(17)
        .font(.headline)
    }
}

struct ViewThatFitsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsBootcamp()
    }
}
