//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/26/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button ("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR"
//                    alertMessage = "The Video Can Not Be Uploaded"
                    showAlert.toggle()
                }
                Button ("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video ✅"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
             getAlert()
        })
        }
    }
    func getAlert () ->Alert {
        switch alertType {
        case .error:
            return Alert(title: Text ("there was an error!"))
        case .success :
            return Alert(
                title: Text("this was a success"),
                message: nil,
                dismissButton: .default(Text("Okay"),
                                        action: {
                                            backgroundColor = .green
        }))
        default:
            return Alert(title: Text("Error"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text (alertMessage),
//            dismissButton: .default(Text("Okay")))
//        return    Alert(
//            title: Text("This is the title."),
//            message: Text("This is an error!"),
//            primaryButton: .destructive(Text("Delete!"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
//        Alert(title: Text ("There was an error!"))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
