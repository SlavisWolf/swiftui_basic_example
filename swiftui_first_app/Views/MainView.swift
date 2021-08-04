//
//  MainView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 1/8/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack{
                MapView().frame(width: .infinity, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                ImageView().offset(y: -150)
                Divider()
                ContentView()
                Spacer().padding()
            }
        }.ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
