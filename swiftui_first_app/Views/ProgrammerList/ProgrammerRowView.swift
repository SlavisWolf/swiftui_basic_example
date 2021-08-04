//
//  ProgrammerRowView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 1/8/21.
//

import SwiftUI

struct ProgrammerRowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name).font(.title)
                Text(programmer.languages.joined(separator: ",")).font(.subheadline)
            }
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
            
        }
    }
}

struct ProgrammerRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammerRowView(programmer: Programmer(id: 1,
                                                 name: "Antonio Jesús",
                                                 languages: ["Swift", "Objective-C", "PHP", "Kotlin"],
                                                 avatar: Image(systemName: "person.fill"),
                                                 favorite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
