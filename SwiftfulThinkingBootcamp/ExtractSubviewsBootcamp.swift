//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/28/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ExtractedView (title: "Apples", count: 1, color: .red)
            ExtractedView(title: "Oranges", count: 10, color: .orange)
            ExtractedView (title: "Bananas", count: 34, color: .yellow)

        }
        
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct ExtractedView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text ("\(count)")
            Text (title)
            
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
