//
//  ColorPickerBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Pick a color",
                selection: $backgroundColor,
                supportsOpacity: true
            )
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
