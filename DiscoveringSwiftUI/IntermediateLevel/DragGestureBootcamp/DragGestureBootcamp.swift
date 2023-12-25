//
//  DragGestureBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 25/12/23.
//

import SwiftUI

struct DragGestureBootcamp: View {
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    @State var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            SignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -150 {
                                    endingOffsetY = -startingOffsetY
                                    currentDragOffsetY = 0
                                } else if endingOffsetY != 0 && currentDragOffsetY > 150  {
                                    currentDragOffsetY = 0
                                }
                                currentDragOffsetY = 0
                            }
                        }
                )            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: 300,
//                    height: 500
//                )
//                .offset(offset)
//                .scaleEffect(getScaleAmount())
//                .rotationEffect(Angle(degrees: getRotationAmount()))
//                .gesture(
//                    DragGesture()
//                        .onChanged { value in
//                            withAnimation(.spring()) {
//                                offset = value.translation
//                            }
//                        }
//                        .onEnded { value in
//                            withAnimation(.spring()) {
//                                offset = .zero
//                            }
//                        }
//                )
        }
        .ignoresSafeArea(edges: .bottom)
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount / max
        let percentageInDoubleFormat = Double(percentage)
        let maxAngle: Double = 10
        
        return percentageInDoubleFormat * maxAngle
    }
}

struct DragGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp()
    }
}

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "chevron.up")
                .padding(.top)
            
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(
                    width: 130,
                    height: 130
                )
            
            Text("This is the description of the app. This is the best SwiftUI course to kick your career! Feel free to share it to your friends!")
                .multilineTextAlignment(.center)
            
            Text("Create your account")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(31)
    }
}
