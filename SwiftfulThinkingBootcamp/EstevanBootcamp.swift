//
//  EstevanBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/7/23.
//

import SwiftUI

struct EstevanBootcamp: View {
    @State var backgroundColor = Color.orange
    @State var myTitle = "FEED THE BIRD"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (spacing: 10) {
                Text ("My Birds")
                    .font(.largeTitle)
                    .bold()
                
                Text ("FEED: \(count)")
                    .font(.title)
                    .underline()
                    .bold()
                
                HStack (spacing: 20){
                    Button ("SNIP!") {
                        backgroundColor = .red
                        myTitle = "Bird died"
                        count -= 1
                            
                    }
                    
                    Button ("FOOD") {
                        backgroundColor = .green
                        myTitle = "You fed the bird"
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct EstevanBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EstevanBootcamp()
    }
}
