//
//  ViewModelBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/8/23.
//

import SwiftUI

struct Fruit: Identifiable {
    let count: Int
    let id = UUID().uuidString
    let name: String
}

class FruitViewModel: ObservableObject {
    @Published var fruits = [Fruit]()
    @Published var isLoading = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) { [weak self] in
            guard let self = self else { return }
            self.fruits.append(
                Fruit(
                    count: 5,
                    name: "Bananas"
                )
            )
            
            self.fruits.append(
                Fruit(
                    count: 51,
                    name: "Oranges"
                )
            )
            
            fruits.append(
                Fruit(
                    count: 14,
                    name: "Watermelons"
                )
            )
            
            self.isLoading = false
        }
    }
    
    func deleteFruit(from index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    // @StateObject -> Use this on creation/init
    @StateObject var fruitViewModel = FruitViewModel()
    // @ObservableObject -> Use this for subviews
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.name): ")
                                .font(.headline)
                                .bold()
                            
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete { indexSet in
                        fruitViewModel.deleteFruit(from: indexSet)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: {
                HelpScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
        }
    }
}

struct HelpScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
