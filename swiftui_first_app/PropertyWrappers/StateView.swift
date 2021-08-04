//
//  StateView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 4/8/21.
//

import SwiftUI

class Bird: ObservableObject {
    
    @Published var name: String
    @Published var color: Color
    
    
    init(name: String, color: Color) {
        self.name = name
        self.color = color
    }
}

struct StateView: View {
    
    // Usamos State cuando la variable va a modificar su valor y este afecta a la propia vista en la que está
    @State private var value = 0
    
    //Esto se utiliza para la navegacion, si el valor coincide con el tag del navigation link se realizara la navegacion a BindingView
    @State private var selection: Int?
    
    //Igual a State pero analiza las variables de las clases de tipo ObservableObject
    @StateObject private var bird = Bird(name: "Cuervo", color: .gray)
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                Text("El valor actual es: \(value)")
                Button("Suma 1") {
                    value += 1
                }.padding()
                
                NavigationLink(
                    destination: BindingView(value: $value, bird: bird),
                    tag: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/,
                    selection: $selection)
                {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
                
                Divider().padding([.top, .bottom], /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Text("Hola, soy un \(bird.name)").foregroundColor(bird.color)
                
                Button("Actualizar pájaro") {
                    bird.name = "Colibrí"
                    bird.color = .orange
                }.padding(.top, 6)
            }.navigationTitle("StateView")
        }
            
    }
}


struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(Bird(name: "Enviroment Bird", color: .purple))
    }
}
