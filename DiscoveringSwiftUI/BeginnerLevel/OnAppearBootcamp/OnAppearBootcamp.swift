//
//  OnAppearBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/8/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var text = "Initial Text"
    @State var count = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(text)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    text = "This is the appeared text"
                }
            }
            .onDisappear {
                text = "Ending text"
            }
            .navigationTitle("OnAppearBootcamp: \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
