//
//  GroupBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 2/9/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 58) {
            Text("Hello World!")
            
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
            .font(.caption)
            .foregroundColor(.yellow)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
