//
//  ListSwipeActionsBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 30/8/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    @State var fruits = [
        "apple",
        "orange",
        "banana",
        "peach"
    ]
    
    var body: some View {
        List {
            ForEach(
                fruits,
                id: \.self
            ) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true
                    ) {
                        Button("Arhive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: true
                    ) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
