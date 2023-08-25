//
//  ActionSheetBootcamp.swift
//  DiscoveringSwiftUI
//
//  Created by Nikos Aggelidis on 21/8/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var actionSheetOption: ActionSheetOption = .isMyPost
    @State var showActionSheet = false
    
    enum ActionSheetOption {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(
                        width: 40,
                        height: 40
                    )
                
                Text("@username")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(
                    1,
                    contentMode: .fit
                )
        }
        .actionSheet(isPresented: $showActionSheet) {
            presentActionSheet()
        }
    }
    
    func presentActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // Code for share button
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // Code for report button
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // Code for delete button
        }
        
        let cancelButton: ActionSheet.Button = .cancel() {
            // Code for cancel button
        }
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text("My Post Title"),
                message: Text("It is my post"),
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
            
        case .isOtherPost:
            return ActionSheet(
                title: Text("Other Post Title"),
                message: Text("It is other's post"),
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
