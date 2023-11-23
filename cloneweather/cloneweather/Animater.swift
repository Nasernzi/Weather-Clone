//
//  Animater.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 23/11/23.
//

import SwiftUI

import SwiftUI

struct Animater: View {
    @State private var cloudOffset: CGFloat = -110 // Initial cloud position off the screen
    private let cloudImage = Image(systemName: "cloud.fill")
        .renderingMode(.original)// Replace with your cloud image
    
    let animationDuration: Double = 5 // Adjust animation duration
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.white.opacity(0.2)]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
            
            cloudImage
                .resizable()
                .frame(width: 70, height: 70) // Adjust cloud size
                .offset(x: cloudOffset, y: 25)
                .onAppear {
                    startCloudAnimation()
                }
        }
    }
    
    func startCloudAnimation() {
        withAnimation(Animation.linear(duration: animationDuration).repeatForever(autoreverses: false)) {
            cloudOffset = UIScreen.main.bounds.width + 100 // Move the cloud off the screen
        }
    }
}

struct Weatherview: View {
    var body: some View {
        CloudsAnimation()
    }
}

struct Animater_previews: PreviewProvider {
    static var previews: some View {
        Animater()
    }
}
