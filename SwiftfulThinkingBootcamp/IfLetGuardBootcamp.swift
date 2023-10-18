//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/17/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID:  String? = nil
    @State var diplayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                
                if let text = diplayText {
                    Text(text)
                        .font(.title)
                }
//                do not use, do not force unwrap values
//                Text(diplayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
              
                Spacer ()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
                
            }
        }
    }
    func loadData(){
        
        if let userId = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3)  {
                diplayText = " This is the new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            diplayText = "Error. There is no User ID"
        }
        
    }
    
    func loadData2() {
        guard let userId = currentUserID else {
            diplayText = "Error. There is no User ID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)  {
            diplayText = " This is the new data! User id is: \(userId)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
