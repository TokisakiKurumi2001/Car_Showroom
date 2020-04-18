//
//  ShopLocation.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/13/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI
import MapKit

struct ShopLocation: UIViewRepresentable {
    var carBrand: CarShowroom
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = carBrand.locationCoordinate
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct ShopLocation_Previews: PreviewProvider {
    static var previews: some View {
        ShopLocation(carBrand: showroomData[0])
    }
}
