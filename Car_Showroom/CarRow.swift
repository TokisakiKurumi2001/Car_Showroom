//
//  CarRow.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/17/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct CarRow: View {
    var carBrand : CarShowroom
    var body: some View {
        HStack {
            carBrand.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(carBrand.name)
            Spacer()
            if (carBrand.isFavorite) {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct CarRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CarRow(carBrand: showroomData[0])
            CarRow(carBrand: showroomData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
