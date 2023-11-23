//
//  cityview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 21/11/23.
//

import SwiftUI

struct cityview: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color.indigo.ignoresSafeArea()
                
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    Image(systemName: "heart.fill")
                    
                }
                    ToolbarItem(placement: .bottomBar){
                        Image(systemName: "heart.fill")
                }
            }
                    }
                }
        }

#Preview {
    cityview()
}
