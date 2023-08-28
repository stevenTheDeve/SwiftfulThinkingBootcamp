//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 7/18/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("JOEMAMA".uppercased())
        
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(color: Color.red)
//            .italic()
//            .strikethrough( true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(1.0)
//            .kerning(1.0)
            
            .multilineTextAlignment(.leading)
            .foregroundColor(.black)
            .frame(width: 500, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
