//
//  ProgrammerListView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 1/8/21.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    
 @Published var programmers = [
           Programmer(id: 0,
                      name: "Antonio Jesús",
                      languages: ["Swift", "Objective-C", "PHP", "Kotlin"],
                      avatar: Image(systemName: "ant.fill"),
                      favorite: true),
                      
           Programmer(id: 1,
                     name: "Dani Ruiz",
                     languages: ["Javascript"],
                     avatar: Image(systemName: "ladybug.fill"),
                     favorite: false ),
       
           Programmer(id: 2,
                     name: "David Motorlop",
                     languages: ["Javascript", "PHP", "JAVA"],
                     avatar: Image(systemName: "tortoise.fill"),
                     favorite: true),
       
           Programmer(id: 3,
                     name: "Angel",
                     languages: ["Golang", "Python"],
                     avatar: Image(systemName: "hare.fill"),
                     favorite: true),
       
           Programmer(id: 4,
                     name: "David Shaco",
                     languages: ["Flameo", "LOL"],
                     avatar: Image(systemName: "cloud.moon.bolt.fill"),
                     favorite: false)
   ]
}

struct ProgrammerListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State var showFavorites = false
    
    var filteredProgramers: [Programmer]  {
        return programmersModelData.programmers.filter({ programmer in
            !showFavorites || programmer.favorite
        })
    }
    
    var body: some View {
        
        VStack {
            
            
            NavigationView {
                VStack {
                    
                    Toggle(isOn: $showFavorites, label: {
                        Text("Mostrar favoritos")
                    }).padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                    
                    List(filteredProgramers, id: \.id) { programmer in
                        NavigationLink(
                            destination: ProgrammerDetailView(favorite: $programmersModelData.programmers[programmer.id].favorite,
                                                                         programmer: programmer)) {
                            ProgrammerRowView(programmer: programmer)
                        }
                    }
                }
                
                .navigationTitle("Programmers")
            }
        }
        
        
    }
}

struct ProgrammerListView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammerListView().environmentObject(ProgrammersModelData())
    }
}
