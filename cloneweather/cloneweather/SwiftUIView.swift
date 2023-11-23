//
//  SwiftUIView.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 21/11/23.
//

import SwiftUI

struct SwiftUIView: View {
   
    private var data: [Int] = Array(1...20)
        private let colors: [Color] = [.red, .green, .blue, .yellow]
    private let adaptiveColumns = [
        GridItem(. adaptive(minimum: 170))
    ]
    private let numbercolumns = [
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: numbercolumns, spacing: 20){
                    ForEach(data, id: \.self){number in
                        ZStack {
                           Rectangle()
                                .frame(width: 360, height: 170)
                            
                                .foregroundColor(colors[number%4])
                                .cornerRadius(35)
                        }
                    }
                    
                }
            }
            .navigationTitle("Hello")
        }
    }
}

#Preview {
    SwiftUIView()
}
