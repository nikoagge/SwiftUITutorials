//
//  IntroView.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 28/8/23.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var isUserSignedIn = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [
                    .purple,
                    .blue
                ],
                center: .topLeading,
                startRadius: 4,
                endRadius: UIScreen.main.bounds.height
            ).ignoresSafeArea()
            
            if isUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)
                    ))
            } else {
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)
                    ))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
