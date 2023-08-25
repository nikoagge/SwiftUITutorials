//
//  TernaryBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 14/7/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!" : "Ending State!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 50)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 60
                )
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
