//
//  SafeAreaBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 6/7/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 26)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.red)
        
        
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(
//                maxWidth: .infinity,
//                maxHeight: .infinity
//            )
//            .background(.red)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
