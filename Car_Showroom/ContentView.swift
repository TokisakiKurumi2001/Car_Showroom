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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
