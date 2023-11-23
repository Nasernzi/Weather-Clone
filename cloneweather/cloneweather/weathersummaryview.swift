//
//  weathersummaryview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 20/11/23.
//

import SwiftUI

struct weathersummaryview: View {
    var body: some View {
        ZStack{
            
            VStack(alignment: .center) {
                Text("NAPLES")
                    .foregroundStyle(.white)
                    .font(Font.system(size: 32))
                    .shadow(radius: 2.0)

                Text("20˚")
                    .fontWeight(.thin)
                    .padding(.leading, 44.0)
                    .foregroundStyle(.white)
                    .font(Font.system(size:100))
                    .shadow(radius: 2.0)
                    
                Text("Mostly sunny")
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .font(Font.system(size:18))
                    .shadow(radius: 2.0)
                    .padding(.bottom,0.1)
                    
                Text("H:26˚ L:17˚")
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .font(Font.system(size:18))
                    .shadow(radius: 3.0)
            }
            
        }
    }
}

#Preview {
    ScrollView{
        weathersummaryview()
            .padding(.top, 50)
    }
    .background(.blue )
    
}
