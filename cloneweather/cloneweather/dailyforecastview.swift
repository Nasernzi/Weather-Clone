//
//  dailyforecastview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 20/11/23.
//

import SwiftUI

struct dailyforecastview: View {
    var body: some View {
        
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(Color.white.opacity(0.7)).font(Font.system(size: 12))
                        .shadow(radius: 1)
                        .padding(.leading)
                    Text("10-DAY FORECAST".uppercased())
                        .fontWeight(.medium)
                        .font(Font.system(size: 12))
                        .foregroundColor(Color.white.opacity(0.7))
                        .shadow(radius: 1.1)
                        
                }
                
                Divider()
                    .background(.white)
                   
                ForEach(0..<9){_ in
                    HStack{
                        Text("Today")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .shadow(radius: 0)
                            .font(Font.system(size: 16))
                            .fontWeight(.semibold)
                       Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                        Spacer()
                            .frame(maxWidth: 50)
                        Spacer()
                        Text("18˚")
                            .foregroundColor(Color.white.opacity(0.7))
                        
                        ProgressView(value: 0.6)
                            .frame(maxWidth: 100)
                       
                        Text("24˚")
                            .foregroundColor(Color.white)
                    }
                    Divider()
                       
                        .background(.white)
                }
                
                
                
            }
            .padding(10)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
           
        }
    
}
    

#Preview {
    ScrollView{
        
        dailyforecastview()
    }
    .padding(.horizontal)
    .background(.blue)
}
