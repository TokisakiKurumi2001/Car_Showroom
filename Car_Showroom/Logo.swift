//
//  Logo.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/12/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct Logo: View {
    var carBrand: CarShowroom
    var body: some View {
        carBrand.image
            // add the resizable method
            // in order to resize the image
            .resizable()
            .frame(width:250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo(carBrand: showroomData[0])
    }
}
