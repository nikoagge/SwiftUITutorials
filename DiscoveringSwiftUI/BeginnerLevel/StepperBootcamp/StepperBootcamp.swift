//
//  StepperBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 23/8/23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper(
                "Stepper: \(stepperValue)",
                value: $stepperValue
            )
            .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: 100 + widthIncrement,
                    height: 100
                )
            
            Stepper("Second Stepper") {
                incrementWidth(amount: 13)
            } onDecrement: {
                incrementWidth(amount: -13)
            }
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
