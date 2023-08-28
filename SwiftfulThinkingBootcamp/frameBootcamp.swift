//
//  frameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 7/27/23.
//

import SwiftUI

struct frameBootcamp: View {
    var body: some View {
        Text("Hello, Andre & Lucio!")
            .background(Color.yellow)
            .frame(height: 500, alignment: .topLeading)
            .background(Color.black)
            .frame(width: 350)
            .background(Color.pink)
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .frame(height: 400)
            .background(Color.red)
            .frame(maxHeight: .infinity)
            .background(Color.purple)
    }
}

struct frameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        frameBootcamp()
    }
}
