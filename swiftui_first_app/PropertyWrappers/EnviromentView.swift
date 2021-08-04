//
//  EnviromentView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 4/8/21.
//

import SwiftUI

struct EnviromentView: View {
    
    //Este parámetro esta pensado para usarse con environmentObject, tras asignarselo a una vista, todas las de su jerarquia tendrán acceso a esta variable.(hay que declararla)
    @EnvironmentObject var bird: Bird
    
    var body: some View {
        Text(bird.name).foregroundColor(bird.color)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(Bird(name: "Loro", color: .red))
    }
}
