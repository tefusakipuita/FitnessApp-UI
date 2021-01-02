//
//  ContentView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Property
    
    @State var progress: Int = 57
    
    @State var showWeightView = false
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            
            // MARK: - Top Bar View
            TopBarView()
            
            // MARK: - Welcome View
            WelcomeView()
            
            ScrollView {
                
                // MARK: - Graph View
                GraphView()
                
                // MARK: - Next View
                NextView()
                
                // MARK: - Scale View
                ScaleView(progress: $progress)
                    .frame(width: 340, height: 340)
                
            } //: Scroll
            
            Spacer()
            
            // MARK: - Custom Tab View
            CustomView(progress: $progress, showWeightView: $showWeightView)
            
        } //: VStack
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().previewDevice("iPhone 11")
        HomeView().previewDevice("iPhone 11 Pro")
    }
}
