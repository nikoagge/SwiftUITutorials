//
//  EnvironmentObjectBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 25/8/23.
//

import SwiftUI

struct AppleDevice: Identifiable {
    let id: String
    let name: String
}

class EnvironmentViewModel: ObservableObject {
    @Published var appleDevices = [AppleDevice]()
    
    init() {
        fillSampleData()
    }
    
    func fillSampleData() {
        appleDevices.append(contentsOf: [
            AppleDevice(
                id: UUID().uuidString,
                name: "iPhone"
            ),
            
            AppleDevice(
                id: UUID().uuidString,
                name: "iPad"
            ),
            
            AppleDevice(
                id: UUID().uuidString,
                name: "iMac"
            ),
            
            AppleDevice(
                id: UUID().uuidString,
                name: "Apple Watch"
            )
        ])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var environmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(environmentViewModel.appleDevices) { appleDevice in
                    NavigationLink {
                        DetailView(selectedItem: appleDevice.name)
                    } label: {
                        Text(appleDevice.name)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
        .environmentObject(environmentViewModel)
    }
}

struct DetailView: View {
//    @ObservedObject var environmentViewModel: EnvironmentViewModel

    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(31)
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    .red,
                    .blue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 22) {
                    ForEach(environmentViewModel.appleDevices) { appleDevice in
                        Text(appleDevice.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentViewModel_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
