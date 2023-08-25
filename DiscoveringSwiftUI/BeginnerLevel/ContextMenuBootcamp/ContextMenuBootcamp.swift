//
//  ContextMenuBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 21/8/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10) {
                Image(systemName: "house.fill")
                    .font(.title)
                
                Text("SwiftUI Training")
                    .font(.headline)
                
                Text("How to use ContextMenu")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(31)
            .background(
                backgroundColor
                    .cornerRadius(31)
            )
            .contextMenu {
                Button {
                    backgroundColor = .yellow
                } label: {
                    Label(
                        "Share post",
                        systemImage: "flame.fill"
                    )
                }
                
                Button {
                    backgroundColor = .red
                } label: {
                    Text("Report post")
                }
                
                Button {
                    backgroundColor = .green
                } label: {
                    HStack {
                        Text("Like post")
                        
                        Image("heart.fill")
                    }
                }
            }
      }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
