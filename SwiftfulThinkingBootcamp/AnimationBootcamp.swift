//
//  AdimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/6/23.
//

import SwiftUI

struct AdimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
              
            }
            Spacer ()
            RoundedRectangle (cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                
            Spacer ()
        }
    }
}

struct AdimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AdimationBootcamp()
    }
}
