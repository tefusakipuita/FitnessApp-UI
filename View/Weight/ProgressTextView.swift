//
//  ProgressTextView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct ProgressTextView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (alignment: .bottom, spacing: 0) {
//            Spacer()
            
            ForEach(Array(stride(from: 40, through: 80, by: 10)), id: \.self) { value in
                
                // progress が範囲内にあるvalueのみ progressを表示させる
                Text("\(inRange(value: value) ? progress : value)")
                    .font(.system(size: 22, weight: .bold))
                    .scaleEffect(inRange(value: value) ? 2.27 : outOfRange(value: value) ? 1 : 1.63)
                    .foregroundColor(inRange(value: value) ? .darkPurple : .mediumLightGray)
                    .offset(y: inRange(value: value) ? -10 : outOfRange(value: value) ? 0 : -4)
                    .frame(width: UIScreen.screenWidth/5)
//                    .animation(Animation.spring(response: 0.4, dampingFraction: 0.6))
                    .animation(.easeOut(duration: 0.3))
                
//                Spacer()
            } //: ForEach
        } //: HStack
    }
    
    
    // MARK: - Function
    
    // 例えば value = 50 のとき、50~60の間にprogressがあるときtrueを返す
    func inRange(value: Int) -> Bool {
        let range = value..<value + 10
        
        return range.contains(progress)
    }
    
    // 例えば value = 60 のとき、50~80の間にprogressがないときtrueを返す
    func outOfRange(value: Int) -> Bool {
        let range = value - 10..<value + 20
        
        return !range.contains(progress)
    }
    
}

// MARK: - Preview

struct ProgressTextView_Previews: PreviewProvider {
    @State static var progress = 62
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
