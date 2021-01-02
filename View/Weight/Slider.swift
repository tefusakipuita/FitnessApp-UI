//
//  Slider.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct Slider: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    @State var knobPosition: CGFloat = 0
    
    let width: CGFloat
    let sliderConfig = SliderConfig()
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .leading) {
            
            // MARK: - Slider
            Capsule()
                .fill(Color.lightGray)
                .frame(height: 12)
            
            // MARK: - Value Knob
            KnobView()
                // knobPosition の値によって左右に移動させる
                .offset(x: knobPosition)
                // Drag Gesture
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation {
                                calculateProgress(xLocation: value.location.x)
                            }
                        })
                ) //: gesture
            
        } //: ZStack
        .onAppear(perform: {
            calculateInitialKnobPosition()
        })
    }
    
    
    // MARK: - Function
    
    // WeightView の画面表示の際に、progressからスライダー(Knob)の最初の位置を算出する
    func calculateInitialKnobPosition() {
        // (progress - 最小値) / (スライダーの最大値 - 最小値)   0~1の間の値になる
        let tempProgress = (CGFloat(progress) - sliderConfig.minimumValue) / (sliderConfig.maximumValue - sliderConfig.minimumValue)
        
        // tempProgress にスライダーの横幅をかける
        knobPosition = (tempProgress * width) - sliderConfig.knobRadius
    }
    
    
    // スライダー(KnobView)の動きに合わせて progress を変更する
    func calculateProgress(xLocation: CGFloat) {
        // progress からスライダーの割合を算出
        let tempProgress = xLocation / width
        
        // Capsuleの範囲外に出ないようにする
        if tempProgress > 0 && tempProgress <= 1 {
            // 進捗割合 * (スライダーの最大値 - 最小値) + 最小値
            let roundedProgress = round((tempProgress * (sliderConfig.maximumValue - sliderConfig.minimumValue)) + sliderConfig.minimumValue)
            
            // 整数に変換
            progress = Int(roundedProgress)
            
            // progress にスライダーの横幅をかける
            let tempPosition = tempProgress * width - sliderConfig.knobRadius
            
            // 
            knobPosition = tempProgress > 0 ? tempPosition : -sliderConfig.knobRadius
        }
    }
}



// MARK: - Preview

struct Slider_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
