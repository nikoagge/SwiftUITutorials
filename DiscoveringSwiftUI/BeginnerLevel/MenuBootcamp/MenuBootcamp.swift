//
//  MenuBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 2/9/23.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Open Menu") {
            Button("First Button") {}
            
            Button("Second Button") {}

            Button("Third Button") {}

            Button("Fourth Button") {}
        }
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
