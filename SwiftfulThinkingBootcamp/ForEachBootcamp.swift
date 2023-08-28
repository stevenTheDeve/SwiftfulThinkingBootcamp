//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 8/4/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = []
    var body: some View {
        VStack {
            ForEach (0..<10) { index in
                HStack {
                    Circle ()
                    .frame(width: 30, height: 30)
                    Text ("Index is: \(index)")
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
