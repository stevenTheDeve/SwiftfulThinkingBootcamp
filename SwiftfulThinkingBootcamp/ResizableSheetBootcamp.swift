//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 12/9/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                .presentationDetents([.large])
        }
    }
}

struct MyNextView: View {
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, world")
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
