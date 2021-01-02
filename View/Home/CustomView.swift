//
//  CustomView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct CustomView: View {
    
    // MARK: - Property
    
    @Binding var progress: Int
    
    @Binding var showWeightView: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 20) {
            
            // MARK: - Left Button
            Image(systemName: "house")
                .foregroundColor(.darkPurple)
                .padding()
            Image(systemName: "waveform.path.ecg")
                .padding()
            
            // MARK: - Center Button
            Button(action: {
                showWeightView = true
            }, label: {
                ZStack {
                    Circle()
                        .fill(Color.darkPurple)
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.darkPurple.opacity(0.5), radius: 10, x: 0, y: 10)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding()
                } //: ZStack
            })
            
            // MARK: - Right Button
            Image(systemName: "heart")
                .padding()
            Image(systemName: "person")
                .padding()
        } //: HStack
        .font(.system(size: 24, weight: .light))
        
        // MARK: - Present
        .sheet(isPresented: $showWeightView, content: {
            WeightView(progress: $progress)
        })
    }
}

// MARK: - Preview

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
