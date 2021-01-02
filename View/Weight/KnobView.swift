//
//  KnobView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct KnobView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.lightGray)
            Circle()
                .strokeBorder(Color.darkPurple, lineWidth: 5)
        } //: ZStack
        .frame(width: 30, height: 30)
        .padding(10)
    }
}

// MARK: - Preview

struct KnobView_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
