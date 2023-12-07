        //
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 12/6/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
        
    var body: some View {
        NavigationStack (path: $paths){
            ZStack {
                Color.black.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                        
                    }
                }
            }
            .navigationTitle("Toolbar")
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "heart.fill")
                    }
                ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gear")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen:\(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
