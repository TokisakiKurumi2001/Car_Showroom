//
//  BrandList.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/17/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct BrandList: View {
    @EnvironmentObject private var userData : UserData
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteList) {
                    Text("Show Favorite")
                }
                ForEach(userData.brands) { carBrand in
                    if !self.userData.showFavoriteList || carBrand.isFavorite {
                        NavigationLink(
                            destination: CarDetail(carBrand: carBrand)
                                .environmentObject(self.userData)
                        ) {
                            CarRow(carBrand: carBrand)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Car Showroom"))
        }
    }
}

struct BrandList_Previews: PreviewProvider {
    static var previews: some View {
        BrandList()
           .environmentObject(UserData())
    }
}
