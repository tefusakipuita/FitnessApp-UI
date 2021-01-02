//
//  GraphView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct GraphView: View {
    
    // MARK: - Property
    
    @State var startAnimation = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            GraphBackgroundView()
            
            // MARK: - Main Graph
            LineGraph(data: Data.caloryData)
                // 画面表示と同時に、グラフが左から伸びてくる
                .trim(from: 0, to: startAnimation ? 1 : 0)
                .stroke(Color.darkPurple, lineWidth: 4)
                .frame(height: 200)
                .offset(y: -20)
        } //: ZStack
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.7)) {
                startAnimation = true
            }
        })
    }
}

// MARK: - Preview

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
