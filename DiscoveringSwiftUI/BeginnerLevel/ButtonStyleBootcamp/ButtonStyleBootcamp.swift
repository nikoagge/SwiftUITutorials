//
//  ButtonStyleBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 29/8/23.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Final Button")
                    .frame(height: 58)
                    .frame(maxWidth: 58)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 22))
            .controlSize(.large)
            
            Button("Button's Title") {
                
            }
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button's Title") {
                
            }
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button's Title") {
                
            }
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button's Title") {
                
            }
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
