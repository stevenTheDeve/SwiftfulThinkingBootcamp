//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 7/21/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    
    var systemColor = UIColor (named: "CustomColor")
    var body: some View {
        RoundedRectangle (cornerRadius: 25.0)
            .fill(
//                Color.red
//                RadialGradient(colors: [Color.red, Color.blue], center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
//                AngularGradient(
//                    colors: [Color.red, Color.blue],
//                    center: .center,
//                    angle: .degrees(1800))
                LinearGradient(colors: [Color(systemColor!),Color.blue],
                               startPoint: .bottomLeading,
                               endPoint: .topTrailing)
            )
            .frame(width: 300, height: 200)

    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
