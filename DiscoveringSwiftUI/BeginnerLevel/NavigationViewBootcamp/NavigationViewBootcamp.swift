//
//  NavigationViewBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 18/8/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Link To second screen") {
                        DestinationScreen()
                }
                
                Text("Inbox 1")
                Text("Inbox 2")
                Text("Inbox 3")
                Text("Inbox 4")
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(
                    destination: {
                    DestinationScreen()
                    },
                    label: {
                        Image(systemName: "gear")
                    }
                )
                .accentColor(.orange)
            )
        }
    }
}

struct DestinationScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                
                NavigationLink("Link to third screen") {
                    Text("Another Screen")
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
