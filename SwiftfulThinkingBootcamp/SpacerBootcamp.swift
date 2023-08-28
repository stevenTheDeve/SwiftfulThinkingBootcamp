//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/1/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            Spacer (minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle ()
                .frame(width: 50, height: 50)
            
            Spacer ()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle ()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer ()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle ()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer (minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.blue)
//        .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
