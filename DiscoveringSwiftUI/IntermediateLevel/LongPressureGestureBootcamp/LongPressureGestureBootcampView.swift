//
//  LongPressureGestureBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 24/12/23.
//

import SwiftUI

struct LongPressureGestureBootcamp: View {
    var body: some View {
        @State var isComplete = false
        @State var isSuccess = false
        
        VStack {
            Rectangle()
                .fill(isSuccess ? .green : .blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 58)
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .background(.gray)
            
            HStack {
                Text("Click here")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onLongPressGesture(
                        minimumDuration: 1,
                        maximumDistance: 50
                    ) { isPressing in
                        // start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1)) {
                                isComplete = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            }
                        }
                    } perform: {
                        // at min duration
                        isSuccess = true
                    }
                
                Text("RESET")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isComplete = false
                        isSuccess = false
                    }
            }
        }
//        Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? .green : .gray)
//            .onLongPressGesture(
//                minimumDuration: 5,
//                maximumDistance: 50
//            ) {
//                isComplete.toggle()
//            }
    }
}

struct LongPressureGestureBootcampView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressureGestureBootcamp()
    }
}
