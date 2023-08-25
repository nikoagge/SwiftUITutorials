//
//  BackgroundAndOverlayBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 27/6/23.
//

import SwiftUI

// MARK: - Implementation with background

//struct BackgroundAndOverlayBootcamp: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(LinearGradient(
//                        gradient: Gradient(colors: [.red, .blue]),
//                        startPoint: .leading,
//                        endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(
//                        gradient: Gradient(colors: [.blue, .red]),
//                        startPoint: .leading,
//                        endPoint: .trailing)
//                    )
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
//    }
//}

// MARK: - Implementation with overlay

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.cyan, .blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .mint, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Text("4")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .mint, radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
