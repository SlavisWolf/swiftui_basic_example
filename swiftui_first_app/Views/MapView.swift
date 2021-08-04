//
//  MapView.swift
//  swiftui_first_app
//
//  Created by Zapp Antonio on 1/8/21.
//

import SwiftUI
import MapKit
// UIViewRepresentable Convierte un elemento de UIKit en un elemento de SwiftUI, en otras vistas podemos llamar a MapView y tratarlo como un elemento mas de swiftui

struct MapView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
       
        
        let coordinates = CLLocationCoordinate2D(latitude: 40.13, longitude: -8.201)
        let span = MKCoordinateSpan(latitudeDelta: 6, longitudeDelta: 7)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().ignoresSafeArea()
    }
}
