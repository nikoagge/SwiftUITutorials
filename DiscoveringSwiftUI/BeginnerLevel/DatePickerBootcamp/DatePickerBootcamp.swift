//
//  DatePickerBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate = Date()
    
    let startingDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate = Date()
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        return dateFormatter
    }
    
    var body: some View {
//        DatePicker(
//            "Pick a date",
//            selection: $selectedDate,
//            in: startingDate...endingDate
//        )
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: selectedDate))
            DatePicker(
                "Choose a date:",
                selection: $selectedDate,
                displayedComponents: [.date, . hourAndMinute]
            )
            .accentColor(.red)
            .datePickerStyle(GraphicalDatePickerStyle()
        )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
