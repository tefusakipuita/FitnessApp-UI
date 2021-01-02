//
//  PersonBackgroundView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI
import SDWebImageSwiftUI

struct PersonBackgroundView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.lightPurple)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
                .scaleEffect(1.5)
                .offset(y: -UIScreen.screenWidth * 0.4)
            
            AnimatedImage(name: "g1.gif")
                .resizable()
                .scaledToFit()
                .frame(width: 270, height: 270)
                .offset(y: UIScreen.screenWidth * 0.2)
        } //: ZStack
    }
}

// MARK: - Preview

struct PersonBackgroundView_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress).previewDevice("iPhone 11")
        WeightView(progress: $progress).previewDevice("iPhone 7")
    }
}
