//
//  StateBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 11/7/23.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor = Color.green
    @State var title = "Some random title"
    @State var count = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 40) {
                    Button("Button 1") {
                        backgroundColor = .yellow
                        title = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Background 2") {
                        backgroundColor = .red
                        title = "Button 2 was pressed"
                        count += 1
                    }
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
