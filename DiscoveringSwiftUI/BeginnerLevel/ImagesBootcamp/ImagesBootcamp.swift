//
//  ImagesBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 27/6/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("labrador")
            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(.blue)
//            .clipped()
//            .cornerRadius(150)
            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
                Ellipse()
            )
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
