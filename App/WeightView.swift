//
//  WeightAdjustView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct WeightView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            
            // MARK: - Person Image
            PersonBackgroundView(progress: $progress)
            
            Text("Weight")
                .font(.system(size: 22, weight: .semibold))
                .padding(.bottom, 32)
            
            // MARK: - Progress Value
            ProgressTextView(progress: $progress)
            
            // MARK: - Rular View
            RularView()
                .padding(.bottom, 16)
            
            // MARK: - Slider
            SliderView(progress: $progress)
                .padding(.bottom, 16)
            
            // MARK: - Next Button
            NextButton()
            
            Spacer()
            
        } //: VStack
    }
}

// MARK: - Preview

struct WeightAdjustView_Previews: PreviewProvider {
    @State static var progress = 62
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
