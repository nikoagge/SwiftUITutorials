//
//  AnimationUpdatedBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 2/9/23.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State private var firstButtonAnimation = false
    @State private var secondButtonAnimation = false

    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("FirstButton") {
                    firstButtonAnimation.toggle()
                }
                
                Button("Second Button ") {
                    secondButtonAnimation.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(
                            width: 130,
                            height: 130
                        )
                        .frame(
                            maxWidth: .infinity,
                            alignment: firstButtonAnimation ? .leading : .trailing
                        )
                        .background(.green)
                        .frame(
                            maxHeight: .infinity,
                            alignment: secondButtonAnimation ? .leading : .trailing
                        )
                        .background(.orange)
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
                .background(.red )
            }
        }
        .animation(
            .spring(),
            value: firstButtonAnimation
        )
        .animation(
            .linear(duration: 4),
            value: secondButtonAnimation
        )

    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
