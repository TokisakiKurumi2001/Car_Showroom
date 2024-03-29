//
//  CarShowroom.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/17/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI
import CoreLocation

struct CarShowroom : Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category
    var isFavorite: Bool

	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
	}

	enum Category : String, CaseIterable, Codable, Hashable {
		case sportcar = "Sportcar"
		case supercar = "Supercar"
		case car = "Car"
	}
}

extension CarShowroom {
	var image: Image {
		ImageStore.shared.image(name: imageName)
	} 
}

struct Coordinates : Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
