//
//  GeometryReaderBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 26/12/23.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    var body: some View {
//        GeometryReader { geometryProxy in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: geometryProxy.size.width * 0.6666)
//
//                Rectangle()
//                    .fill(.red)
//            }
//            .ignoresSafeArea()
//        }
        
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geometryProxy in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(for: geometryProxy) * 40),
                                axis: (
                                    x: 0,
                                    y: 1,
                                    z: 0
                            ))
                    }
                    .frame(
                        width: 310,
                        height: 260
                    )
                    .padding()
                }
            }
        }
    }
    
    func getPercentage(for geometryProxy: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geometryProxy.frame(in: .global).midX
        
        return Double(1 - (currentX / maxDistance))
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
    }
}
