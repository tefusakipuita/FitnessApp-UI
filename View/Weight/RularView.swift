//
//  RularView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct RularView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (alignment: .bottom) {
            Spacer()
            Spacer()
            
            ForEach(Array(stride(from: 40, through: 80, by: 5)), id: \.self) { value in
                VStack {
                    Rectangle()
                        .fill(Color.mediumLightGray)
                        .frame(width: 1.5, height: value % 10 == 0 ? 25 : 15)
                    
                    Text("\(value)")
                        .font(.system(size: 15, weight: .bold))
                        .opacity(value % 10 == 0 ? 1 : 0)
                } //: VStack
                
                Spacer()
            } //: ForEach
            
            Spacer()
        } //: HStack
    }
}

// MARK: - Preview

struct RularView_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
