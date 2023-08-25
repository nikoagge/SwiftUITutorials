//
//  ListBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 20/8/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple",
        "banana",
        "orange",
        "peach"
    ]
    
    @State var veggetables: [String] = [
        "carrot",
        "potato",
        "tomato"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack {
                    Text("Fruits")
                    
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.yellow)
                ) {
                    ForEach(
                        fruits,
                        id: \.self
                    ) { fruit in
                        Text(fruit.capitalized)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove { indices, newOffset in
                        move(
                            indices: indices,
                            newOffset: newOffset
                        )
                    }
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggetables")) {
                    ForEach(
                        veggetables,
                        id: \.self
                    ) { veggetable in
                        Text(veggetable.capitalized)
                    }
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.orange)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(
        indices: IndexSet,
        newOffset: Int
    ) {
        fruits.move(
            fromOffsets: indices,
            toOffset: newOffset
        )
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
