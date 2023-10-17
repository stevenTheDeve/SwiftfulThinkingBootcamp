//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/17/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 2) {
                    
                    Text("This text is Promary")
                        .foregroundColor(.primary)
                    Text("This text is Secondary")
                        .foregroundColor(.secondary)
                    Text("This text is a Black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This text is Red")
                        .foregroundColor(.red)
                    Text("This color is globaly adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
