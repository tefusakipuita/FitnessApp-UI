//
//  WelcomeView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Hi, Psyduck")
                    .foregroundColor(.darkPurple)
                    .font(.system(size: 22, weight: .bold))
                Text("Welcom back")
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.mediumLightGray)
            } //: VStack
            
            Spacer()
        } //: HStack
    }
}

// MARK: - Preview

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
