//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/7/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing: 20) {
            Text (title)
            
            
            Button("Press Me") {
                self.title = "Button is pressed"
                
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text ("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(Color
                        .blue
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )}
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle ()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image (systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )}
            
            Button {
                self.title = "Button #4"
            } label: {
                Text ("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                
            }



        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
