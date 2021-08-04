//
//  BindingView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 4/8/21.
//

import SwiftUI

struct BindingView: View {
    
    //La principal diferencia con State es que Binding espera recibir el valor de otra vista, no inicializar los valores en la propia vista.
    @Binding var value: Int
    @State var selection: Int?
    // Igual que binding pero para StateObjects
    @ObservedObject var bird: Bird
    
    var body: some View {
        VStack {
            Button("Suma 2") {
                value += 2
            }
            
            Button("Liberar pájaro") {
                bird.name = "Gorrión"
                bird.color = Color.green
            }.padding()
            
            NavigationLink(
                // Hay que tener en cuenta que para Enviroment no estamos pasando el observedObject, cogerá el enviromentObject de la jerarquia de vistas
                destination: EnviromentView(),
                tag: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/,
                selection: $selection)
            {
                Button("EnviromentView") {
                    selection = 1
                }.foregroundColor(.red)
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(0), bird: Bird(name: "Canario", color: .yellow) )
    }
}
