//
//  BackgroundMaterialsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 29/8/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(
                        width: 58,
                        height: 4
                    )
                    .padding()
                
                Spacer()
            }
            .frame(height: 310)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(31)
        }
        .ignoresSafeArea()
        .background(
            Image("labrador")
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
