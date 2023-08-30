//
//  SubmitTextFieldBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 30/8/23.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var textFieldText = ""
    
    var body: some View {
        VStack {
            TextField(
                "TextField's placeholder",
                text: $textFieldText
            )
            .submitLabel(.route)
            .onSubmit {
                debugPrint("Submit button tapped")
            }
            
            TextField(
                "TextField's placeholder",
                text: $textFieldText
            )
            .submitLabel(.next)
            .onSubmit {
                debugPrint("Submit button tapped")
            }
            
            TextField(
                "TextField's placeholder",
                text: $textFieldText
            )
            .submitLabel(.search)
            .onSubmit {
                debugPrint("Submit button tapped")
            }
        }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
