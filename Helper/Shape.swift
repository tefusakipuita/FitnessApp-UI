//
//  Shape.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI


// MARK: - LineGraph
struct LineGraph: Shape {
    
    // MARK: - Property
    
    var data: [CGFloat]
    
    
    // MARK: - Main
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        if data.count == 0 {
            return path
        }
        
        // デフォルトでy軸は下向きだけど、グラフのy軸は上向きにしたいからある値からの差分をとる
        var x: CGFloat = 30
        var y: CGFloat = 200 - data[0] / 2
        
        // 1. 開始地点
        path.move(to: CGPoint(x: x, y: y))
        
        var previousPoint = CGPoint(x: x, y: y)
        
        // 2. 次のデータのために右に40移動させる (データ間の間隔を40にするため)
        x += 40
        
        // 各データを繋ぎ合わせる
        for i in 1..<data.count {
            // 3. 次のデータの値
            y = 200 - data[i] / 2
            
            // データの目的地(次のデータの座標) 2.3でcurrentPointのx,yを更新している
            let currentPoint = CGPoint(x: x, y: y)
            // 前のデータと次のデータの座標から制御点を算出する
            
            // 制御点1
            let plusOffsetPoint = CGPoint(x: previousPoint.x + 20, y: previousPoint.y)
            // 制御点2
            let minusOffsetPoint = CGPoint(x: currentPoint.x - 20, y: currentPoint.y)
            
            // 4. 次のデータ(3. のデータ)までカーブさせて繋ぎ合わせる
            path.addCurve(to: currentPoint, control1: plusOffsetPoint, control2: minusOffsetPoint)
            
            // 5. 次のデータの制御点のための previousPoint を更新する
            previousPoint = currentPoint
        
            // 6. 右に移動
            x += 40
        }
        
        return path
    }
}

