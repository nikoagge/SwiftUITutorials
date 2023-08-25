//
//  SliderBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 13
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(String(
                format: "%.2f",
                sliderValue
            ))
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//                .accentColor(.orange)
            Slider(
                value: $sliderValue,
                in: 0...100,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("100"),
                label: {
                    Text("Title")
                }
            )
                .accentColor(.orange)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
