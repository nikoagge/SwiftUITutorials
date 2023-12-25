//
//  ScrollViewReaderBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 25/12/23.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    @State var numberTextFieldText = ""
    @State var scrollToIndex = 0
    
    var body: some View {
        VStack {
            TextField(
                "Enter a number here from 0 till 49...",
                text: $numberTextFieldText
            )
            .frame(height: 58)
            .border(.gray)
            .padding(.horizontal)
            .keyboardType(.numberPad)
            
            Button("Scroll") {
                withAnimation(.spring()) {
                    if let index = Int(numberTextFieldText) {
                        scrollToIndex = index
                    }
                }
            }
            
            ScrollView {
                ScrollViewReader { proxy in
//                    Button("Click here to go to #31") {
//                        withAnimation(.spring()) {
//                            proxy.scrollTo(30, anchor: .bottom)
//                        }
//                    }
                    
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) { newValue in
                        proxy.scrollTo(newValue)
                    }
                }
            }

        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}
