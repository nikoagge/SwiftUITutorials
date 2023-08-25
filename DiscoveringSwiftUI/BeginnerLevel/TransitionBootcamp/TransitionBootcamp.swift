//
//  TransitionBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 17/8/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Show View") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 31)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
            
//            RoundedRectangle(cornerRadius: 31)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .opacity(showView ? 1 : 0)
//                .animation(.easeInOut)
        }
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
