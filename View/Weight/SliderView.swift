//
//  SliderView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct SliderView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            ForEach(0..<5) { _ in
                Spacer()
            } //: ForEach
            
            GeometryReader(content: { geometry in
                Slider(progress: $progress, width: geometry.size.width)
            })
            .frame(height: 50)
            
            ForEach(0..<5) { _ in
                Spacer()
            } //: ForEach
        } //: HStack
    }
}

// MARK: - Preview

struct SliderView_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
