//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/26/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle ()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer ()
                Button (action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                    
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle ()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    
    
    func getActionSheet () -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet (
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("THIS IS THE MESSAGE"),
//            buttons: [button1, button2, button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
