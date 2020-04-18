//
//  BrandList.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/17/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct BrandList: View {
    var body: some View {
        NavigationView {
            List(showroomData) { carBrand in
                NavigationLink(destination: CarDetail(carBrand: carBrand)) {
                    CarRow(carBrand: carBrand)
                }
            }
            .navigationBarTitle(Text("Car Showroom"))
        }
    }
}

struct BrandList_Previews: PreviewProvider {
    static var previews: some View {
        BrandList()
    }
}
