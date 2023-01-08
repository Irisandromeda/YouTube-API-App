//
//  UILabel + Extension.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont?, textColor: UIColor, textAlignment: NSTextAlignment) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
    }
    
}
