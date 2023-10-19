//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/18/23.
//

import SwiftUI

struct UserModel:Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
//        "Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "Emily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "Ninja", followerCount: 350, isVerified: false),
        UserModel(displayName: "Chris", userName: "ChrisH2009", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle ()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline )
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
            
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
