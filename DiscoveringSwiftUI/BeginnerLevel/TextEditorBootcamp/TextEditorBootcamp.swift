//
//  TextEditorBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 21/8/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText = "Placeholder text"
    @State var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 260)
//                    .foregroundColor(.orange)
//                    .background(.purple)
                    .colorMultiply(.red)
                    .cornerRadius(13)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(13)
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
