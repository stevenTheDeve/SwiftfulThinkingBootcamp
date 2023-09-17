//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/15/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apples", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            Section(
                header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text (fruit.capitalized)
                    }
                    .onDelete(perform: { indexSet in
                        delete(indexSet: indexSet)
                    })
                }
        }
    }
    
    func delete (indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

