//
//  mapforcastview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 22/11/23.
//

import SwiftUI

struct mapforecastview: View {
    var body: some View {
        
            ScrollView{
                VStack {
                    
                    weathersummaryview()
                        .padding(.top, 60)
                        .padding(.bottom, 40)
                    hourlyforcastview()
                    dailyforecastview()
                }
                .padding(.horizontal)
                TabView{
                    
                    SwiftUIView()
                        .tabItem {
                            Image(systemName: "sun.max.fill")
                            Text("home")
                            
                        }
                }
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }

#Preview {
    mapforecastview()
}
