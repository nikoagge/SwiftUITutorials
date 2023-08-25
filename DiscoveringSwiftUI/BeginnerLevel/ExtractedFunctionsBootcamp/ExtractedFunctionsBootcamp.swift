//
//  ExtractedFunctionsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 12/7/23.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor = Color.pink
    
    var body: some View {
        backgroundColor
            .edgesIgnoringSafeArea(.all)
        
        contentLayer
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me!!!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(13)
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .cyan
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
