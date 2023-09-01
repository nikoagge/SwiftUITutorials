//
//  ToolbarBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 1/9/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State private var textFieldText = ""
    @State private var navigationStackPaths: [String] = []
    
    var body: some View {
        NavigationStack(path: $navigationStackPaths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField(
                        "Placeholder",
                        text: $textFieldText
                    )
                    
                    Text("Hello world").foregroundColor(.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(
                                width: 200,
                                height: 200
                            )
                    }
                }
            }
            .navigationTitle("ToolbarBootcamp")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Image(systemName: "gear")
//                }
                
//                ToolbarItem(placement: .keyboard) {
//                    Image(systemName: "gear")
//                }
                
                // Puts it in the center of the screen
                ToolbarItem(placement: .principal) {
                    Image(systemName: "gear")
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    navigationStackPaths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    navigationStackPaths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen with: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
