//
//  AsyncImageBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 29/8/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    private let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        // Minimum iOS deployment target should be 15 or bigger
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: 130,
                        height: 130
                    )
                    .cornerRadius(20)
                
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(
//                    width: 130,
//                    height: 130
//                )
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
