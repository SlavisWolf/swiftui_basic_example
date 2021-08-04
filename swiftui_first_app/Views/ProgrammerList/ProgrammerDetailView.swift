//
//  ProgrammerDetailView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 1/8/21.
//

import SwiftUI

struct ProgrammerDetailView: View {
    
    @Binding var favorite: Bool
    var programmer: Programmer
    
    var body: some View {
       
        VStack {
            programmer.avatar
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding(30)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            HStack {
                Text(programmer.name).font(.title)
                    .padding(.bottom, 4)
                Button(action: {
                    favorite.toggle()
                }, label: {
                    Image(systemName: favorite ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.yellow)
                })
                .padding(.leading, 12)
            }
            Text(programmer.languages.joined(separator: ",")).font(.subheadline)
            
            Spacer()
        }
    }
}

struct ProgrammerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammerDetailView(favorite: .constant(false), programmer: Programmer(id: 1,
                                                    name: "Antonio Jesús",
                                                    languages: ["Swift", "Objective-C", "PHP", "Kotlin"],
                                                    avatar: Image(systemName: "ant.fill"),
                                                    favorite: true))
    }
}
