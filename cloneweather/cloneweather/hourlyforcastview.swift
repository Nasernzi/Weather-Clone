//
//  hourlyforcastview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 20/11/23.
//

import SwiftUI

struct hourlyforcastview: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("sunny conditions will continue for the rest of the day. Wind gusts are up to 18 mph.")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .font(Font.system(size: 12))
                .shadow(radius: 2.0)
                .padding(.bottom,6)
            Divider()
                .padding(.bottom,9)
                
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<23){_ in
                        VStack{
                            Text("Now")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .font(Font.system(size: 14))
                                .shadow(radius: 2.0)
                            Image(systemName:"sun.max.fill" )
                                .renderingMode(.original)
                                .padding(.vertical,4)
                            Text("18˚")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .font(Font.system(size: 20))
                                .shadow(radius: 2.0)
                        }
                        .padding(.trailing,20)
                    }
                    
                    
                    
                }
                
            }
            
        }
        .padding(14)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
        
        
        
        
    }
}

#Preview {
    ScrollView{
        hourlyforcastview()
    }
    .background(.blue)
}
