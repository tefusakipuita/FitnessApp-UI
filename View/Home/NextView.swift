//
//  NextView.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI

struct NextView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            HStack (spacing: 44) {
                Image(systemName: "chevron.left")
                Text("Next Week".uppercased())
                Image(systemName: "chevron.right")
            } //: HStack
            .padding()
        } //: ZStack
    }
}

// MARK: - Preview

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
