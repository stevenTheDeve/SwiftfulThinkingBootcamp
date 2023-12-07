//
//  SubmitTextField.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 12/5/23.
//

import SwiftUI

struct SubmitTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder ...", text: $text)
            .submitLabel(.route
            )
            .onSubmit {
                print("Something to the console ")
            }
    }
}

#Preview {
    SubmitTextField()
}
