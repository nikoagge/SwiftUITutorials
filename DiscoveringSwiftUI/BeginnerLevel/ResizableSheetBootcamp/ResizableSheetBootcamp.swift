//
//  ResizableSheetBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 1/9/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet = false
    @State private var presentationDetent: PresentationDetent = .large
    
    var body: some View {
        Button("Click here") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            NextView()
                .presentationDetents([.medium, .large], selection: $presentationDetent)
//                .presentationDetents([.height(240)])
//                .presentationDetents([.fraction(0.4)])
//                .presentationDetents([
//                    .medium,
//                    .large
//                ])
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        }
    }
}

struct NextView: View {
    @Binding var presentationDetents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Medium") {
                    // We can only choose from detents that we have set in parent view
                    presentationDetents = .medium
                }
                
                Button("Larg") {
                    presentationDetents = .large
                }
            }
        }
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
