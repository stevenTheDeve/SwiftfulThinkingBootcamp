//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/29/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            Button {
                backgroundColor = Color.orange
            } label: {
                Text ("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background (Color.blue)
                    .cornerRadius(10)
            }

        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
