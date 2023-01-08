//
//  SectionList.swift
//  YouTube API App
//
//  Created by Irisandromeda on 07.01.2023.
//

import Foundation

enum SectionList {
    case gallery(_ gallery: Data)
    
    var galleryItems: Data {
        switch self {
        case .gallery(let items):
            return items
        }
    }
    
    var galleryCount: Int {
        return galleryItems.list.count
    }
}
