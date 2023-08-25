//
//  ShapesBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 26/6/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.red)
//            .foregroundColor(.red)
//            .stroke()
//            .stroke(Color.yellow)
//            .stroke(Color.gray, lineWidth: 31)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 22, lineCap: .round, dash: [31]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.red, lineWidth: 31)
        
        
        
//        Ellipse()
        
//        Capsule(style: .circular)
//            .fill(.yellow)
//        Rectangle()
        RoundedRectangle(cornerRadius: 31)
            .frame(width: 200, height: 130)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
