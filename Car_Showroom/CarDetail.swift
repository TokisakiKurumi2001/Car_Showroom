//
//  CarDetail.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/18/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct CarDetail: View {
    var carBrand: CarShowroom
    var body: some View {
        VStack {
            ShopLocation(location: carBrand.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            Logo(image: carBrand.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(carBrand.name)
                    .font(.title)
                HStack {
                    Text(carBrand.park)
                        .font(.subheadline)
                    Spacer()
                    Text(carBrand.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(carBrand.name), displayMode: .inline)
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(carBrand: showroomData[0])
    }
}
