//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/9/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                    
                }
                Spacer ()
            }
            
            if showView {
                RoundedRectangle (cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.slide)
                    .animation(.easeInOut)
                
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
