//
//  ForEachBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 5/7/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data = ["Hi", "Hello", "Hey everyone!", "Welcome", "Goodmorning", "Test"]
    let myString = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 40, height: 40)
//
//                    Text("Index is: \(index)")
//                }
//            }
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
