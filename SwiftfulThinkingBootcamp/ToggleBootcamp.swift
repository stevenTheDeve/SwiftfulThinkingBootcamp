//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/1/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer ()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
