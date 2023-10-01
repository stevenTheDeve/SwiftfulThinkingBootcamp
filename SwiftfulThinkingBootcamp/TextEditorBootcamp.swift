//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/30/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starter"
    @State var saveText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                Button(action: {
                    saveText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                })
                Text(saveText)
                
                Spacer ()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
