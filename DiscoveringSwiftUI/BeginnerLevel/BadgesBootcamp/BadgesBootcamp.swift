//
//  BadgesBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 30/8/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello world!")
                .badge("New Items")
            
            Text("Hello world!")
                .badge(4)
            
            Text("Hello world!")
            
            Text("Hello world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(4)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hi")
//                }
//                .badge("New")
//
//            Color.yellow
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("New")
//                }
//                .badge(2)
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
