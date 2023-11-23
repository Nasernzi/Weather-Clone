//
//  ContentView.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 19/11/23.
//

import SwiftUI
import SwiftUI

struct ToolbarModifier: ViewModifier {
    let backgroundColor: UIColor

    init(backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UIToolbarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        UIToolbar.appearance().standardAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content     
    }
}
struct weatherview: View {
    var body: some
    View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    VStack {
                    Animater()
                        weathersummaryview()
                            .padding(.top, 60)
                            .padding(.bottom, 40)
                        hourlyforcastview()
                        dailyforecastview()
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement:.bottomBar){
                    Image(systemName: "map")
                        .foregroundColor(.white)
                }
                ToolbarItem(placement:.bottomBar){
                    Image(systemName: "list.bullet")
                        .foregroundColor(.white)
                }
                
            }
            
            .modifier(ToolbarModifier(backgroundColor:.separator))
            
            .padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        
    }
    
}


#Preview {
    
    weatherview()
}
