//
//  UIImageView + Extension.swift
//  YouTube API App
//
//  Created by Irisandromeda on 08.01.2023.
//

import UIKit

extension UIImageView {
    
    convenience init(contentMode: UIView.ContentMode) {
        self.init()
        
        self.contentMode = contentMode
    }
    
}
