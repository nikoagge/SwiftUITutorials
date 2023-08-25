//
//  AnimationTimingBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 15/7/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating = false
    
    let duration = 13.0
    
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 22)
                .frame(
                    width: isAnimating ? 310 : 58,
                    height: 103
                )
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.4,
                    blendDuration: 1
                ))
//                .animation(Animation.linear(
//                    duration: duration),
//                    value: UUID()
//                )
//
//            RoundedRectangle(cornerRadius: 22)
//                .frame(
//                    width: isAnimating ? 310 : 58,
//                    height: 103
//                )
//                .animation(Animation.easeInOut(
//                    duration: duration),
//                    value: UUID()
//                )
//
//            RoundedRectangle(cornerRadius: 22)
//                .frame(
//                    width: isAnimating ? 310 : 58,
//                    height: 103
//                )
//                .animation(Animation.easeOut(
//                    duration: duration),
//                    value: UUID()
//                )
//
//            RoundedRectangle(cornerRadius: 22)
//                .frame(
//                    width: isAnimating ? 310 : 58,
//                    height: 103
//                )
//                .animation(Animation.easeIn(
//                    duration: duration),
//                    value: UUID()
//                )
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
