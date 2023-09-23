//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 9/15/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apples", "orange", "banana", "peach", "blueberries"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.red)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text (fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                Section(header: Text ("veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .listRowBackground(Color.green)
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button ("Add", action: {
            add()
        })
    }
    
    func delete (indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move  (indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        
    }
    
    func add () {
        fruits.append("Coconut")
        
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

