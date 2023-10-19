//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/19/23.
//

import SwiftUI

struct FruitModel:Identifiable {
    let id: String = UUID().uuidString 
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject {
    
   @Published var fruitArray: [FruitModel] = []
   @Published var isLoading: Bool = false
    
    func getFruits () {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index:IndexSet) {
        fruitArray.remove(atOffsets: index)
        
    }
}

struct ViewModelBootcamp: View {
 
    
   @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel ()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
