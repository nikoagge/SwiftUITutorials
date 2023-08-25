//
//  GradientsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 27/6/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [.red, .blue, .orange, .green]
//                    ),
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
//                RadialGradient(
//                    gradient:
//                        Gradient(colors: [.red, .orange, .blue]),
//                    center: .topTrailing,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .center,
                    angle: .degrees(45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
