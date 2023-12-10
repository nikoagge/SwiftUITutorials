//
//  NativePopoverBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 10/12/23.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State private var showPopover = false
    @State private var possibleFeedback = [
        "Very bad 🫠",
        "Not bad, not great 😐",
        "Perfect! 🥳"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button("Click me!") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(.orange)
                .popover(
                    isPresented: $showPopover,
                    attachmentAnchor: .point(.topLeading)) {
                        ScrollView {
                            VStack {
                                ForEach(possibleFeedback, id: \.self) { option in
                                    Button(option) {
                                        
                                    }
                                    
                                    if option != possibleFeedback.last {
                                        Divider()
                                    }
                                }
                            }
                            .padding(20)
                        }
                    }
                    .presentationCompactAdaptation(.popover)
            }
            
//            .popover(isPresented: $showPopover) {
//                Text("Hello world!")
//                    .presentationCompactAdaptation(.popover)
//            }
        }
    }
}

struct NativePopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NativePopoverBootcamp()
    }
}
