//
//  InitializerBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 4/7/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(
        count: Int,
        fruit: Fruit
    ) {
        self.count = count
        
        title = fruit == .apple ? "Apples" : "Oranges"
        backgroundColor = fruit == .apple ? .red : .orange
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 13) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("Apples")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 130, height: 130)
        .background(.red)
        .cornerRadius(13)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(
                count: 100,
                fruit: .apple
            )
            
            InitializerBootcamp(
                count: 46,
                fruit: .orange
            )
        }
    }
}
