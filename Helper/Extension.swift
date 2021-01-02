//
//  Extension.swift
//  Fitness App
//
//  Created by 中筋淳朗 on 2020/11/15.
//

import SwiftUI


extension Color {
    
    static let lightPurple = Color.init(red: 160/255, green: 120/255, blue: 244/255)
    static let darkPurple = Color.init(red: 119/255, green: 50/255, blue: 249/255)
    static let lightGray = Color.init(red: 239/255, green: 239/255, blue: 239/255)
    static let mediumLightGray = Color.init(red: 185/255, green: 185/255, blue: 185/255)
}


extension UIScreen {
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    
    static let screenSize = UIScreen.main.bounds.size
}
