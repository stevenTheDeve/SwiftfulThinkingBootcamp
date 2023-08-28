//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 7/26/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("twitch")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
            .cornerRadius(50)
//            .clipShape(Circle())
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
