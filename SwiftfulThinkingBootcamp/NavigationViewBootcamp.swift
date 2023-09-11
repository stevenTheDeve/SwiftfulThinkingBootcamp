//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/11/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                
                NavigationLink("hello",
                               destination: myOtherScreen ())
                
                Text ("hello")
                Text ("hello")
                Text ("hello")
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                
                leading:
                    HStack {
                        Image (systemName: "person.fill")
                        Image (systemName: "flame.fill")
                    }
                   
                
                ,
                trailing:
                    NavigationLink(
                        destination: myOtherScreen(),
                        label: {
                            Image (systemName: "gear")
                })
                    .accentColor(.red)
            )
        }
    }
}

    struct myOtherScreen: View {
        
        @Environment (\.presentationMode) var presentaionMode
        
        var body: some View {
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.all)
                    .navigationTitle("Green Screen")
                    .navigationBarBackButtonHidden(true)
                    
                VStack {
                    Button("Back Button") {
                        presentaionMode.wrappedValue.dismiss()
                    }
                    NavigationLink ("Click here", destination:  Text ("3rd Screen"))
                }
            }
        }
    }

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
