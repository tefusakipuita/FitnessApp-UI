//
//  NextButton.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/16.
//

import SwiftUI

struct NextButton: View {
    
    // MARK: - Property
    
    @Environment(\.presentationMode) var presentation
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            presentation.wrappedValue.dismiss()
        }, label: {
            ZStack {
                Capsule()
                    .fill(Color.darkPurple)
                    .frame(width: 130, height: 50)
                    .shadow(color: Color.darkPurple.opacity(0.5), radius: 10, y: 10)
                
                Text("Next")
                    .foregroundColor(.white)
            } //: ZStack
        })
    }
}

// MARK: - Preview

struct NextButton_Previews: PreviewProvider {
    @State static var progress = 57
    
    static var previews: some View {
        WeightView(progress: $progress)
    }
}
