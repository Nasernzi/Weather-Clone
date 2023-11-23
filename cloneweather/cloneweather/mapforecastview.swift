//
//  mapforecastview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 22/11/23.
//

import SwiftUI

struct mapforecastview: View {
    var body: some View {
        NavigationView {
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
           
            .listRowInsets(EdgeInsets())
            .navigationBarTitle("Weather App", displayMode: .inline)
        }
    }
}
#Preview {
    mapforecastview()
}
