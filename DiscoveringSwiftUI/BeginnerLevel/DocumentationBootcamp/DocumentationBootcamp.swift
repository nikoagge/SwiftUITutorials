//
//  DocumentationBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    @State var data = [
        "Apples",
        "Bananas",
        "Oranges"
    ]
    @State var showAlert = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("List of fruits")
                ForEach(
                    data,
                    id: \.self
                ) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert") {
                showAlert.toggle()
            })
            .alert(isPresented: $showAlert) {
                presentAlert(with: "Alert's title")
            }
        }
    }
    
    func presentAlert(with title: String) -> Alert {
        return Alert(title: Text(title))
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
