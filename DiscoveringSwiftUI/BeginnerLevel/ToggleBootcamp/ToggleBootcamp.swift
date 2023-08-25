//
//  ToggleBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 22/8/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isToggleOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isToggleOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            
            Spacer()
        }
        .padding(.horizontal, 130)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
