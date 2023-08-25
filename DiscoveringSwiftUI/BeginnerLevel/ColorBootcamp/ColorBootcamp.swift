//
//  ColorBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 26/6/23.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.yellow
                Color("CustomColorTest")
            )
            .frame(width: 200, height: 180)
            .shadow(
                color: Color("CustomColorTest")
                    .opacity(0.3),
                radius: 13,
                x: -20,
                y: -20
            )
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
