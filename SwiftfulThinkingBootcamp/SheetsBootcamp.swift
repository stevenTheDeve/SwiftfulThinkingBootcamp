//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/9/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSweet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSweet.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            })
            .fullScreenCover(isPresented: $showSweet, content: {
                SecondScreen()
            })
        }
    }
    struct SecondScreen: View {
        
        @Environment(\.presentationMode) var presentaionMode
        
        var body: some View {
            ZStack (alignment: .topLeading) {
                Color.red
                    .edgesIgnoringSafeArea(.all)
                Button(action: {
                    presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }
    struct SheetsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            SheetsBootcamp()
            SecondScreen ()
        }
    }
}
