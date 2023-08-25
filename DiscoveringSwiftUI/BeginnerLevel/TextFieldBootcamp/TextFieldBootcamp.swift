//
//  TextFieldBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 21/8/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var text = ""
    @State var arrayWithData = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField(
                    "Placeholder text",
                    text: $text
                )
                .padding()
                .background(Color.gray.opacity(0.4).cornerRadius(13))
                .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    if isTextAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextAppropriate() ? .blue : .gray)
                        .cornerRadius(13)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextAppropriate())
                
                ForEach(arrayWithData, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func isTextAppropriate() -> Bool {
        return text.count >= 3 ? true : false
    }
    
    func saveText() {
        arrayWithData.append(text)
        text = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
