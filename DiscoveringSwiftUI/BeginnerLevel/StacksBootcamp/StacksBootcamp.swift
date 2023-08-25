//
//  StacksBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 1/7/23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.yellow)
                .frame(width: 400, height: 500)
            VStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 130, height: 130)
                
                HStack {
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 75, height: 75)
                }
                .background(Color.white)
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
