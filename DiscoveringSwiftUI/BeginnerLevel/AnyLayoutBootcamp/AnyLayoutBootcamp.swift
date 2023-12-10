//
//  AnyLayoutBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 10/12/23.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 13) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("A")
                Text("B")
                Text("C")
            }
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("A")
//                    Text("B")
//                    Text("C")
//                }
//            } else {
//                HStack {
//                    Text("A")
//                    Text("B")
//                    Text("C")
//                }
//            }
        }
    }
}

struct AnyLayoutBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnyLayoutBootcamp()
    }
}
