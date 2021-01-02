//
//  ScaleView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct ScaleView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    @State var startAnimation = false
    
    let sliderConfig = SliderConfig()
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - OutSide Circle
            Circle()
                .trim(from: 0.3, to: 1.0)
                .stroke(Color.lightGray, style: StrokeStyle(lineWidth: 4, lineCap: .round))
                .rotationEffect(Angle(degrees: 36))
            
            // MARK: - Inside Circle
            Circle()
                .trim(from: 0.3, to: 1)
                .stroke(Color.lightGray, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 36))
            
            // MARK: - Rular View
            Circle()
                .trim(from: 0.3, to: 1)
                .stroke(Color.mediumLightGray, style: StrokeStyle(lineWidth: 12, lineCap: .butt, dash: [2, 35.2]))
                .scaleEffect(0.83)
                .rotationEffect(Angle(degrees: 36))
            
            // MARK: - Progress View
            Circle()
                .trim(from: 0.3, to: startAnimation ? CGFloat(progress)*0.7/(sliderConfig.maximumValue-sliderConfig.minimumValue)-0.4 : 0)
                .stroke(Color.darkPurple, style: StrokeStyle(lineWidth: 16, lineCap: .round))
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 36))
            
            // MARK: - Value
            HStack {
                Text("\(progress)")
                    .font(.system(size: 40, weight: .black))
                Text("kg")
                    .font(.system(size: 35, weight: .regular))
            } //: HStack
            
        } //: ZStack
        .onAppear(perform: {
            withAnimation {
                startAnimation = true
            }
        })
    }
}

// MARK: - Preview

struct ScaleView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
