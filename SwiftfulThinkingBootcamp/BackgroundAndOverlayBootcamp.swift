//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 7/28/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
            Circle ()
                .fill(
                    LinearGradient(
                        colors: [Color.red, Color.blue],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: Color.black, radius: 10, x: 0.0, y: 10)
                .overlay(
                Circle ()
                    .fill(Color.blue)
                    .frame(width: 35, height: 35)
                    .overlay(
                    Text ("5")
                        .font(.headline)
                        .foregroundColor(.white)
                    )
                    .shadow(color: Color.black, radius: 10, x: 5, y: 5)

                , alignment: .bottomTrailing
                )
            )
    
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
