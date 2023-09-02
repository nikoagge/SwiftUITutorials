//
//  SafeAreaInsetsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 2/9/23.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 240)
            }
            .navigationTitle("SafeAreaInsetsBootcamp")
//            .overlay(
//                Text("Hi")
//                    .frame(width: .infinity)
//                    .background(.yellow),
//                alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hi")
                    .padding()
//                    .frame(width: .infinity)
                    .background(.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct SafeAreaInsetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsBootcamp()
    }
}
