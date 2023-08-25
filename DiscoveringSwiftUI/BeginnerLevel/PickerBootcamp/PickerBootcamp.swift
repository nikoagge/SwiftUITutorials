//
//  PickerBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 22/8/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selectedValue = "Most Recent"
    
    let filterOptions = [
        "Most Recent",
        "Most Popular",
        "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(
            attributes,
            for: .selected
        )
    }
    
    var body: some View {
        Picker(
            selection: $selectedValue) {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(.red)

//        Picker(
//            selection: .constant(1)) {
//                ForEach(
//                    filterOptions,
//                    id: \.self) { option in
//                        HStack {
//                            Text(option)
//                            Image(systemName: "heart.fill")
//                        }
//                            .tag(option)
//                    }
//            } label: {
//                HStack {
//                    Text("Filter:")
//                    Text(selectedValue)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding(.horizontal)
//                .background(.red)
//                .cornerRadius(13)
//                .shadow(
//                    color: .blue.opacity(0.4),
//                    radius: 13,
//                    x: 0,
//                    y: 10
//                )
//            }
//            .pickerStyle(MenuPickerStyle())

        
//        VStack {
//            HStack {
//                Text("Age")
//                Text(selectedValue)
//            }
//
//            Picker(
//                selection: $selectedValue,
//                label: Text("Picker")
//            ) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                        .tag("\(number)")
//                }
//            }
//            .pickerStyle(WheelPickerStyle())
////            .background(.gray.opacity(0.4))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
