//
//  NavigationStackBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 31/8/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    let fruits = [
        "Apple",
        "Banana",
        "Orange"
    ]
    
    @State private var navigationStackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $navigationStackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    Button("Super segue") {
//                        navigationStackPath.append("Coconut")
                        navigationStackPath.append(contentsOf: [
                            "Mango",
                            "Watermelon",
                            "Melon"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { value in
                        NavigationLink(value: value) {
                            Text("Click value: \(value)")
                        }
                    }
                }
            }
            .navigationTitle("NavigationStackBootcamp")
            .navigationDestination(for: Int.self) { value in
                AnotherDestinationScreen(value: value)
                    .navigationDestination(for: String.self) { value in
                        Text("Fruit screen with: \(value)")
                    }
            }
        }

//        NavigationStack {
//            ScrollView {
//                VStack(spacing: 40) {
//                    ForEach(fruits, id: \.self) { fruit in
//                        NavigationLink(value: fruit) {
//                            Text(fruit)
//                        }
//                    }
//
//                    ForEach(0..<10) { value in
//                        NavigationLink(value: value) {
//                            Text("Click value: \(value)")
//                        }
//                    }
//                }
//            }
//            .navigationTitle("NavigationStackBootcamp")
//            .navigationDestination(for: Int.self) { value in
//                AnotherDestinationScreen(value: value)
//                    .navigationDestination(for: String.self) { value in
//                        Text("Fruit screen with: \(value)")
//                    }
//            }
//        }
    }
}

struct AnotherDestinationScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        debugPrint("Value is: \(value)")
    }
    
    var body: some View {
        Text("Second screen \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
