//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/28/23.
//

import SwiftUI


struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    @State var amountClicked = 0

    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text ("\(amountClicked) tapped")
                .font(.largeTitle)
            
            Button   {
                buttonPressed()
            } label: {
                Text ("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        
    }
    
    func buttonPressed () {
        backgroundColor = .yellow
        amountClicked += 1
    } 
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
