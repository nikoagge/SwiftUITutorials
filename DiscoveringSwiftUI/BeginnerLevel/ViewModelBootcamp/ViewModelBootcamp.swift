//
//  ViewModelBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/8/23.
//

import SwiftUI

struct Fruit: Identifiable {
    let count: Int
    let id = UUID().uuidString
    let name: String
}

struct ViewModelBootcamp: View {
    @State var fruits = [
        Fruit(
            count: 4,
            name: "Apples"
        )
    ]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
