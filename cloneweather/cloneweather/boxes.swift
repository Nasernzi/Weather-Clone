//
//  boxes.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 22/11/23.
//

import SwiftUI

struct CloudsAnimation: View {
    @State private var cloudOffset: CGFloat = -200 // Initial cloud position off the screen
    private let cloudImage = Image(systemName: "cloud.fill") // Replace with your cloud image
    
    let animationDuration: Double = 10 // Adjust animation duration
    let timerInterval: Double = 0.1 // Adjust timer interval for smoother animation
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.white.opacity(0.2)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            cloudImage
                .resizable()
                .frame(width: 50, height: 50) // Adjust cloud size
                .offset(x: cloudOffset, y: 100)
                .onAppear {
                    startCloudAnimation()
                }
        }
    }
    
    func startCloudAnimation() {
        Timer.scheduledTimer(withTimeInterval: timerInterval, repeats: true) { timer in
            withAnimation(Animation.linear(duration: animationDuration)) {
                cloudOffset = UIScreen.main.bounds.width + 100 // Move the cloud off the screen
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        CloudsAnimation()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

