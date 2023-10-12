//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/2/23.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection: String = "1"

    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) { number in
                        Text("\(number)")
                            .tag("\(number)")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
                        
                    }
                })
            .pickerStyle(WheelPickerStyle())
        }
        }
     
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
