//
//  ContentView.swift
//  Car_Showroom
//
//  Created by Le Minh Khoi on 4/12/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ShopLocation()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            Logo()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Mazda")
                    .font(.title)
                HStack {
                    Text("Mazda Phu My Hung")
                        .font(.subheadline)
                    Spacer()
                    Text("Ho Chi Minh")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
