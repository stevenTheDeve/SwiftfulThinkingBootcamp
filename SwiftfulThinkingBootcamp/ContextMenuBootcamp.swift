//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/28/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text ("Swiftful View")
                .font(.headline)
            Text("How to use Context View")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
                 
            }, label: {
                Label ("Share Post", image: "flame.fill") 
            })
            
           Button(action: {
               backgroundColor = .red
               
           }, label: {
               Text ("Report Post")
           })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like Post")
                    Image (systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
