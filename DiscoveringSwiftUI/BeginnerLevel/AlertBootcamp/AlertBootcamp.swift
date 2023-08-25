//
//  AlertBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 20/8/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var alertMessage = ""
    @State var alertTitle = ""
    @State var alertType: AlertType? = nil
    @State var backgroundColor = Color.red
    @State var showAlert = false

    enum AlertType {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Error Alert") {
//                    alertMessage = "The video could not be uploaded"
//                    alertTitle = "Error!"
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Succes Alert") {
//                    alertMessage = "Successfully uploaded video!⚡️"
//                    alertTitle = "Success!"
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                presentAlert()
            }
        }
    }
    
    func presentAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("Error Title"),
                message: Text("Error Message"),
                primaryButton: .destructive(Text("Change!")) {
                    backgroundColor = .blue
                },
                secondaryButton: .cancel()
            )
        case .success:
            return Alert(
                title: Text("Success Title"),
                message: Text("Success Message"),
                primaryButton: .destructive(Text("Change!")) {
                    backgroundColor = .blue
                },
                secondaryButton: .cancel()
            )
            
        default:
            return Alert(title: Text("Default title"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
