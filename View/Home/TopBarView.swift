//
//  TopBarView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct TopBarView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            
            // MARK: - Left Icon
            ZStack {
                Circle()
                    .fill(Color.darkPurple)
                    .frame(width: 6, height: 6)
                Circle()
                    .fill(Color.darkPurple)
                    .frame(width: 6, height: 6)
                    .offset(x: 8, y: 8)
                Circle()
                    .fill(Color.darkPurple)
                    .frame(width: 6, height: 6)
                    .offset(x: 8, y: -8)
            } //: ZStack
            
            Spacer()
            
            // MARK: - User Image
            Image("profile")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
        } //: HStack
    }
}

// MARK: - Preview

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
