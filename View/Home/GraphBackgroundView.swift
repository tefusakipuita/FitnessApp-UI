//
//  GraphBackgroundView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct GraphBackgroundView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .top) {
            VStack (spacing: 40) {
                
                // MARK: - Top Right Month
                HStack {
                    Spacer()
                    Text("August")
                } //: HStack
                
                // MARK: - Line
                ForEach(0..<5) { i in
                    Rectangle()
                        .fill(Color.lightGray)
                        .frame(height: 1)
                } //: ForEach
                
                // MARK: - Bottom Week
                HStack {
                    Spacer()
                    
                    ForEach(Data.weekArray, id: \.self) { day in
                        Text(day)
                        
                        Spacer()
                    } //: ForEach
                } //: HStack
                .offset(y: -20)
            } //: VStack
            
            // MARK: - Left Value
            HStack {
                VStack (alignment: .leading, spacing: 22) {
                    ForEach(Array(stride(from: 4, through: 0, by: -1)), id: \.self) { i in
                        Text("\(i * 100)")
                            .font(.system(size: 15, weight: .regular))
                    } //: ForEach
                } //: VStack
                .padding(.top, 38)
                
                Spacer()
            } //: HStack
            
            Spacer()
        } //: ZStack
    }
}

// MARK: - Preview

struct GraphBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
