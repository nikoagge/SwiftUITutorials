//
//  IconsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 27/6/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.caption)
//            .font(.system(size:40))
            .foregroundColor(.yellow)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
