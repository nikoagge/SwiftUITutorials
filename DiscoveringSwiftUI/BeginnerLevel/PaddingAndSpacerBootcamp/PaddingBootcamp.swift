//
//  PaddingBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 3/7/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
////            .padding()
//            .padding(.vertical, 10)
//            .background(.blue)
//        Text("Hello World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)
//            .padding(.leading, 20)
        VStack(alignment: .leading) {
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what will do in this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(13)
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 13,
                    x: 0,
                    y: 13
                )
        )
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
