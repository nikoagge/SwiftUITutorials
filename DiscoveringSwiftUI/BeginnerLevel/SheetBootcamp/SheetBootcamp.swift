//
//  SheetBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 17/8/23.
//

import SwiftUI

struct SheetBootcamp: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Show sheet")
                    .frame(
                        width: 130,
                        height: 58
                    )
                    .background(Color.black)
                    .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $showSheet) {
                // DO NOT ADD CONDITIONAL LOGIC HERE
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
            // DO NOT ADD CONDITIONAL LOGIC HERE
//                Text("Pop up is presented!")
//            }

        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}
struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
    }
}
