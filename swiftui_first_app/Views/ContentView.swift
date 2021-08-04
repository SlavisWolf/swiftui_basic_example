//
//  ContentView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 9/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Hello, world!")
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .background(Color.gray)
            
            ZStack(alignment: .center) {
                Rectangle().frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(0)
                
                Rectangle().frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                    .padding(30)
                
                Rectangle().frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
                    .padding(60)
                Rectangle().frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
                    .padding(90)
            }
            
            HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
                Text("Hello, world!")
                    .padding()
                    .background(Color.gray)
                Text("Hello, world!")
                    .padding()
                 .background(Color.gray)
            }
            
            Text("Hola que tal")
            Text("Hola que tal")
            Text("Hola que tal")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
