//
//  ImageView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 9/7/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("vegeta")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
                .padding(50)
                .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "person.fill").foregroundColor(.red)
        }
            
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
