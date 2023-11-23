//
//  rangedprogressview.swift
//  cloneweather
//
//  Created by SEYED NASER NAZARIMEHRABANI on 20/11/23.
//

import SwiftUI

struct rangedprogressview: ProgressViewStyle {
    let range: ClosedRange<Double>
    func makeBody(configuration: Configuration)-> some View {
        return GeometryReader{proxy in
            ZStack(alignment: .leading){
                Capsule()
                    .fill(.green)
                Capsule()
                    .fill(.blue)
                    .frame(width: proxy.size.width * fillwidthScale)
                    .offset(x: proxy.size.width * range.lowerBound)
                
            }
        }
    }
    var fillwidthScale: Double{
        let normalizedRange = range.upperBound - range.lowerBound
        return Double(normalizedRange)
    }
}

struct rangedprogressview_Preview : PreviewProvider {
    static var previews: some View{
        ScrollView
        {
            VStack{
                ForEach(0...10,id: \.self){ value in
                    ProgressView(value: 0.5)
                        .frame(height: 10)
                        .progressViewStyle(rangedprogressview(range: 0.0...(Double(value)/10.0)))
                        .padding()
                }
                ForEach(0...10,id: \.self){ value in
                    ProgressView(value: 0.5)
                        .frame(height: 10)
                        .progressViewStyle(rangedprogressview(range: (Double(value)/10.0)...1.0))
                        .padding()
                    
                    
                }
                ProgressView(value: 0.5)
                    .frame(height: 10)
                    .progressViewStyle(rangedprogressview(range: 0.1...0.9))
                    .padding()
                ProgressView(value: 0.5)
                    .frame(height: 10)
                    .progressViewStyle(rangedprogressview(range: 0.3...0.7))
                    .padding()
                ProgressView(value: 0.5)
                    .frame(height: 10)
                    .progressViewStyle(rangedprogressview(range: 0.4...0.9))
                    .padding()
                }
            }
        }
    }

